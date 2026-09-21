#!/usr/bin/env node

import { createReadStream } from "node:fs";
import { mkdir, readdir, stat, writeFile } from "node:fs/promises";
import { dirname, relative, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const FUNCTION_HEADER_KINDS = [
  "base constructor",
  "derived constructor",
  "generator inner",
  "function",
  "arrow",
  "method",
];

const MAX_EXAMPLES = 12;
const MAX_PREVIEW_CODE_UNITS = 500;

function parseArguments(argv) {
  const scriptDirectory = dirname(fileURLToPath(import.meta.url));
  const defaults = {
    input: resolve(scriptDirectory, "../refining_parser_grammar/dumps"),
    output: resolve(scriptDirectory, "generated/corpus-survey.json"),
    stdout: false,
  };

  const options = { ...defaults };
  for (let index = 0; index < argv.length; index += 1) {
    const argument = argv[index];
    if (argument === "--input") {
      options.input = resolve(requireValue(argv, ++index, "--input"));
    } else if (argument === "--output") {
      options.output = resolve(requireValue(argv, ++index, "--output"));
    } else if (argument === "--stdout") {
      options.stdout = true;
    } else if (argument === "--help" || argument === "-h") {
      options.help = true;
    } else {
      throw new Error(`Unknown argument: ${argument}`);
    }
  }
  return options;
}

function requireValue(argv, index, option) {
  const value = argv[index];
  if (value === undefined) {
    throw new Error(`${option} requires a value`);
  }
  return value;
}

async function listFiles(inputPath) {
  const inputStat = await stat(inputPath);
  if (inputStat.isFile()) {
    return [inputPath];
  }
  if (!inputStat.isDirectory()) {
    throw new Error(`Input is neither a file nor a directory: ${inputPath}`);
  }

  const files = [];
  async function visit(directory) {
    const entries = await readdir(directory, { withFileTypes: true });
    entries.sort((left, right) => left.name.localeCompare(right.name));
    for (const entry of entries) {
      const path = resolve(directory, entry.name);
      if (entry.isDirectory()) {
        await visit(path);
      } else if (entry.isFile()) {
        files.push(path);
      }
    }
  }
  await visit(inputPath);
  return files;
}

async function* readUtf8Lines(filePath) {
  const decoder = new TextDecoder("utf-8", { fatal: true });
  let pending = "";
  let pendingOffset = 0;
  let line = 0;

  for await (const chunk of createReadStream(filePath)) {
    pending += decoder.decode(chunk, { stream: true });
    const consumed = yieldCompleteLines(pending, pendingOffset, line, false);
    for (const entry of consumed.lines) {
      yield entry;
    }
    pending = pending.slice(consumed.codeUnits);
    pendingOffset += consumed.codeUnits;
    line += consumed.lines.length;
  }

  pending += decoder.decode();
  const consumed = yieldCompleteLines(pending, pendingOffset, line, true);
  for (const entry of consumed.lines) {
    yield entry;
  }
}

function yieldCompleteLines(text, baseOffset, firstLine, final) {
  const lines = [];
  let start = 0;

  while (start < text.length) {
    let cursor = start;
    while (cursor < text.length && text[cursor] !== "\n" && text[cursor] !== "\r") {
      cursor += 1;
    }

    if (cursor === text.length) {
      if (final) {
        lines.push({
          text: text.slice(start),
          ending: "none",
          line: firstLine + lines.length,
          offset: baseOffset + start,
        });
        start = cursor;
      }
      break;
    }

    if (text[cursor] === "\r" && cursor + 1 === text.length && !final) {
      break;
    }

    let ending = "lf";
    let end = cursor + 1;
    if (text[cursor] === "\r") {
      if (text[cursor + 1] === "\n") {
        ending = "crlf";
        end = cursor + 2;
      } else {
        ending = "cr";
      }
    }

    lines.push({
      text: text.slice(start, cursor),
      ending,
      line: firstLine + lines.length,
      offset: baseOffset + start,
    });
    start = end;
  }

  return { lines, codeUnits: start };
}

function createBucket() {
  return { count: 0, distinct: new Set(), examples: [] };
}

function addExample(bucket, example, distinctValue = example.text) {
  bucket.count += 1;
  if (bucket.distinct.has(distinctValue)) {
    return;
  }
  bucket.distinct.add(distinctValue);
  if (bucket.examples.length < MAX_EXAMPLES) {
    bucket.examples.push(example);
  }
}

function previewLine(file, entry) {
  const truncated = entry.text.length > MAX_PREVIEW_CODE_UNITS;
  return {
    file,
    line: entry.line,
    offset: entry.offset,
    text: truncated
      ? `${entry.text.slice(0, MAX_PREVIEW_CODE_UNITS)}…`
      : entry.text,
    ...(truncated ? { truncated: true } : {}),
  };
}

function matchFunctionHeader(line) {
  for (const kind of FUNCTION_HEADER_KINDS) {
    if (line.startsWith(`${kind} `)) {
      return kind;
    }
  }
  return undefined;
}

function isMarkerLike(line) {
  return (
    line.includes("*** INITIAL STATE") ||
    line.includes("*** AFTER ") ||
    line.includes("function_end") ||
    line.includes("scope %VS")
  );
}

async function surveyFile(filePath, inputRoot, aggregate) {
  const fileStat = await stat(filePath);
  const file = relative(inputRoot, filePath) || filePath.split("/").at(-1);
  const result = {
    file,
    bytes: fileStat.size,
    lines: 0,
    lineEndings: { lf: 0, crlf: 0, cr: 0, none: 0 },
    initialSnapshots: 0,
    afterPassSnapshots: 0,
    functionHeaders: 0,
    functionEnds: 0,
    scopes: 0,
    containsAnsiEscapes: false,
    validUtf8: true,
    anomalyCount: 0,
  };

  let insideFunction = false;
  let sawInitialSnapshot = false;

  try {
    for await (const entry of readUtf8Lines(filePath)) {
      result.lines += 1;
      result.lineEndings[entry.ending] += 1;
      aggregate.lineEndings[entry.ending] += 1;

      if (entry.text.length > aggregate.maxLineLength.codeUnits) {
        aggregate.maxLineLength = {
          codeUnits: entry.text.length,
          file,
          line: entry.line,
          offset: entry.offset,
        };
      }

      if (entry.text.includes("\u001b[")) {
        result.containsAnsiEscapes = true;
        addExample(aggregate.ansiEscapeLines, previewLine(file, entry));
      }

      const isInitial = entry.text === "*** INITIAL STATE";
      const afterMatch = /^\*\*\* AFTER (.+)$/.exec(entry.text);
      const functionKind = matchFunctionHeader(entry.text);
      const isFunctionEnd = entry.text === "function_end";
      const isScope = entry.text.startsWith("scope %VS");

      if (isInitial) {
        if (insideFunction) {
          recordAnomaly(
            aggregate,
            result,
            file,
            entry,
            "snapshot-inside-function",
            "An initial snapshot started before the preceding function ended.",
          );
          insideFunction = false;
        }
        sawInitialSnapshot = true;
        result.initialSnapshots += 1;
        aggregate.initialSnapshotCount += 1;
      } else if (afterMatch) {
        if (!sawInitialSnapshot) {
          recordAnomaly(
            aggregate,
            result,
            file,
            entry,
            "pass-before-initial",
            "An after-pass snapshot appeared before an initial snapshot.",
          );
        }
        if (insideFunction) {
          recordAnomaly(
            aggregate,
            result,
            file,
            entry,
            "snapshot-inside-function",
            "An after-pass snapshot started before the preceding function ended.",
          );
          insideFunction = false;
        }
        result.afterPassSnapshots += 1;
        aggregate.afterPassSnapshotCount += 1;
        aggregate.passNames.set(
          afterMatch[1],
          (aggregate.passNames.get(afterMatch[1]) ?? 0) + 1,
        );
      } else if (functionKind !== undefined) {
        if (insideFunction) {
          recordAnomaly(
            aggregate,
            result,
            file,
            entry,
            "nested-function-header",
            "A function header appeared before the preceding function ended.",
          );
        }
        insideFunction = true;
        result.functionHeaders += 1;
        aggregate.functionHeaderCount += 1;
        addExample(
          aggregate.functionHeaderKinds[functionKind],
          previewLine(file, entry),
        );
      } else if (isFunctionEnd) {
        result.functionEnds += 1;
        aggregate.functionEndCount += 1;
        if (!insideFunction) {
          recordAnomaly(
            aggregate,
            result,
            file,
            entry,
            "function-end-without-header",
            "A function_end marker appeared without an open function.",
          );
        }
        insideFunction = false;
      } else if (isScope) {
        result.scopes += 1;
        addExample(aggregate.scopeLines, previewLine(file, entry));
      }

      const recognized =
        isInitial ||
        afterMatch !== null ||
        functionKind !== undefined ||
        isFunctionEnd ||
        isScope;
      if (!recognized && isMarkerLike(entry.text)) {
        addExample(aggregate.markerLikeLines, previewLine(file, entry));
      }

      if (!sawInitialSnapshot && entry.text.trim() !== "") {
        addExample(aggregate.outsideTraceLines, previewLine(file, entry));
      }
    }
  } catch (error) {
    if (error instanceof TypeError && /encoded data was not valid/.test(error.message)) {
      result.validUtf8 = false;
      aggregate.invalidUtf8Files.push(file);
    } else {
      throw error;
    }
  }

  if (insideFunction) {
    const syntheticEntry = {
      line: Math.max(0, result.lines - 1),
      offset: 0,
      text: "",
    };
    recordAnomaly(
      aggregate,
      result,
      file,
      syntheticEntry,
      "unterminated-function",
      "The file ended before the final function_end marker.",
    );
  }

  return result;
}

function recordAnomaly(aggregate, fileResult, file, entry, code, message) {
  fileResult.anomalyCount += 1;
  aggregate.anomalies.push({
    code,
    file,
    line: entry.line,
    offset: entry.offset,
    message,
  });
}

function finishBucket(bucket) {
  return {
    count: bucket.count,
    distinctCount: bucket.distinct.size,
    examples: bucket.examples,
  };
}

export async function surveyCorpus(inputPath) {
  const inputStat = await stat(inputPath);
  const inputRoot = inputStat.isDirectory() ? inputPath : dirname(inputPath);
  const files = await listFiles(inputPath);
  const aggregate = {
    initialSnapshotCount: 0,
    afterPassSnapshotCount: 0,
    functionHeaderCount: 0,
    functionEndCount: 0,
    lineEndings: { lf: 0, crlf: 0, cr: 0, none: 0 },
    passNames: new Map(),
    functionHeaderKinds: Object.fromEntries(
      FUNCTION_HEADER_KINDS.map((kind) => [kind, createBucket()]),
    ),
    scopeLines: createBucket(),
    markerLikeLines: createBucket(),
    outsideTraceLines: createBucket(),
    ansiEscapeLines: createBucket(),
    invalidUtf8Files: [],
    anomalies: [],
    maxLineLength: { codeUnits: 0 },
  };

  const fileReports = [];
  for (const file of files) {
    fileReports.push(await surveyFile(file, inputRoot, aggregate));
  }

  return {
    format: "shermes-ir-dump-corpus-survey",
    version: 1,
    summary: {
      fileCount: fileReports.length,
      totalBytes: fileReports.reduce((sum, file) => sum + file.bytes, 0),
      totalLines: fileReports.reduce((sum, file) => sum + file.lines, 0),
      initialSnapshotCount: aggregate.initialSnapshotCount,
      afterPassSnapshotCount: aggregate.afterPassSnapshotCount,
      functionHeaderCount: aggregate.functionHeaderCount,
      functionEndCount: aggregate.functionEndCount,
      lineEndings: aggregate.lineEndings,
      invalidUtf8FileCount: aggregate.invalidUtf8Files.length,
      ansiEscapeFileCount: fileReports.filter((file) => file.containsAnsiEscapes)
        .length,
      maxLineLength: aggregate.maxLineLength,
    },
    passNames: [...aggregate.passNames.entries()]
      .sort(([left], [right]) => left.localeCompare(right))
      .map(([name, count]) => ({ name, count })),
    functionHeaderKinds: Object.fromEntries(
      FUNCTION_HEADER_KINDS.map((kind) => [
        kind,
        finishBucket(aggregate.functionHeaderKinds[kind]),
      ]),
    ),
    scopeLines: finishBucket(aggregate.scopeLines),
    markerLikeLines: finishBucket(aggregate.markerLikeLines),
    outsideTraceLines: finishBucket(aggregate.outsideTraceLines),
    ansiEscapeLines: finishBucket(aggregate.ansiEscapeLines),
    invalidUtf8Files: aggregate.invalidUtf8Files,
    anomalies: aggregate.anomalies,
    files: fileReports,
  };
}

function printHelp() {
  process.stdout.write(`Usage: node survey-dumps.mjs [options]\n\n`);
  process.stdout.write(`  --input <path>   Dump file or directory to survey\n`);
  process.stdout.write(`  --output <path>  JSON report path\n`);
  process.stdout.write(`  --stdout         Write the report to stdout instead of a file\n`);
}

async function main() {
  const options = parseArguments(process.argv.slice(2));
  if (options.help) {
    printHelp();
    return;
  }

  const report = await surveyCorpus(options.input);
  const json = `${JSON.stringify(report, null, 2)}\n`;
  if (options.stdout) {
    process.stdout.write(json);
  } else {
    await mkdir(dirname(options.output), { recursive: true });
    await writeFile(options.output, json, "utf8");
    process.stdout.write(`${options.output}\n`);
  }
}

const invokedPath = process.argv[1] ? resolve(process.argv[1]) : undefined;
const modulePath = fileURLToPath(import.meta.url);
if (invokedPath === modulePath) {
  try {
    await main();
  } catch (error) {
    process.stderr.write(
      `${error instanceof Error ? error.message : String(error)}\n`,
    );
    process.exitCode = 1;
  }
}
