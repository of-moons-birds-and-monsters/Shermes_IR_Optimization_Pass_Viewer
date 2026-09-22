#!/usr/bin/env -S node --experimental-strip-types

import { readFile, readdir, stat } from "node:fs/promises";
import { basename, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import {
  buildDumpIndex,
  type DumpIndex,
  type TextRange,
} from "../../parser_src/dump_parser.ts";

type FileResult = {
  file: string;
  bytes: number;
  traces: number;
  snapshots: number;
  functions: number;
  functionVersions: number;
  basicBlockVersions: number;
  instructionVersions: number;
  inliningEvents: number;
  diagnostics: number;
  warnings: number;
  milliseconds: number;
};

const toolDirectory = fileURLToPath(new URL(".", import.meta.url));
const inputPath = resolve(
  process.argv[2] ?? `${toolDirectory}/../refining_parser_grammar/dumps`,
);

const inputStat = await stat(inputPath);
const paths = inputStat.isDirectory()
  ? (await readdir(inputPath, { withFileTypes: true }))
      .filter((entry) => entry.isFile())
      .map((entry) => resolve(inputPath, entry.name))
      .sort()
  : [inputPath];

const results: FileResult[] = [];
for (const path of paths) {
  const bytes = await readFile(path);
  const start = performance.now();
  const index = await buildDumpIndex(bytes);
  validateIndex(index);
  results.push({
    file: basename(path),
    bytes: bytes.byteLength,
    traces: index.traceSegments.length,
    snapshots: index.traceSegments.reduce(
      (count, trace) => count + trace.snapshots.length,
      0,
    ),
    functions: index.functions.length,
    functionVersions: index.functionVersions.length,
    basicBlockVersions: index.basicBlockVersions.length,
    instructionVersions: index.instructionVersions.length,
    inliningEvents: index.inliningEvents?.length ?? 0,
    diagnostics: index.diagnostics.length,
    warnings: index.warnings?.length ?? 0,
    milliseconds: Math.round((performance.now() - start) * 10) / 10,
  });
}

process.stdout.write(
  `${JSON.stringify(
    {
      files: results,
      totals: {
        files: results.length,
        bytes: sum(results, "bytes"),
        traces: sum(results, "traces"),
        snapshots: sum(results, "snapshots"),
        functions: sum(results, "functions"),
        functionVersions: sum(results, "functionVersions"),
        basicBlockVersions: sum(results, "basicBlockVersions"),
        instructionVersions: sum(results, "instructionVersions"),
        inliningEvents: sum(results, "inliningEvents"),
        diagnostics: sum(results, "diagnostics"),
        warnings: sum(results, "warnings"),
        milliseconds: Math.round(sum(results, "milliseconds") * 10) / 10,
      },
    },
    null,
    2,
  )}\n`,
);

function sum(results: FileResult[], key: keyof FileResult): number {
  return results.reduce((total, result) => {
    const value = result[key];
    return total + (typeof value === "number" ? value : 0);
  }, 0);
}

function validateIndex(index: DumpIndex): void {
  const snapshotIds = new Set(
    index.traceSegments.flatMap((trace) =>
      trace.snapshots.map((snapshot) => snapshot.id),
    ),
  );
  const traceIdBySnapshotId = new Map(
    index.traceSegments.flatMap((trace) =>
      trace.snapshots.map((snapshot) => [snapshot.id, trace.id] as const),
    ),
  );
  const functionIds = new Set(index.functions.map((identity) => identity.id));
  const traceIds = new Set(index.traceSegments.map((trace) => trace.id));
  const functionVersions = new Map(
    index.functionVersions.map((version) => [version.id, version]),
  );

  for (const trace of index.traceSegments) {
    assertRange(index.dump.text, trace.dumpRange, `trace ${trace.id}`);
    for (const snapshot of trace.snapshots) {
      assertRange(
        index.dump.text,
        snapshot.headingRange,
        `snapshot heading ${snapshot.id}`,
      );
      assertRange(
        index.dump.text,
        snapshot.dumpRange,
        `snapshot ${snapshot.id}`,
      );
    }
  }

  for (const identity of index.functions) {
    if (!snapshotIds.has(identity.firstSeenSnapshotId)) {
      throw new Error(`Unknown first snapshot for ${identity.id}`);
    }
    assertRange(
      index.dump.text,
      identity.firstHeaderRange,
      `first header ${identity.id}`,
    );
  }

  for (const version of index.functionVersions) {
    if (!snapshotIds.has(version.snapshotId)) {
      throw new Error(`Unknown snapshot for ${version.id}`);
    }
    if (!functionIds.has(version.functionId)) {
      throw new Error(`Unknown function for ${version.id}`);
    }
    assertRange(index.dump.text, version.dumpRange, version.id);
    assertRange(index.dump.text, version.headerRange, `${version.id} header`);
    if (
      version.headerRange.start < version.dumpRange.start ||
      version.headerRange.end > version.dumpRange.end
    ) {
      throw new Error(`Header lies outside ${version.id}`);
    }
    if (
      !index.dump.text
        .slice(version.dumpRange.start, version.dumpRange.end)
        .endsWith("function_end")
    ) {
      throw new Error(`${version.id} does not end at function_end`);
    }
  }

  const blockKeys = new Set<string>();
  for (const block of index.basicBlockVersions) {
    const parent = functionVersions.get(block.functionVersionId);
    if (!parent) throw new Error(`Unknown function version for ${block.id}`);
    if (
      parent.functionId !== block.functionId ||
      parent.snapshotId !== block.snapshotId
    ) {
      throw new Error(`Inconsistent parent references for ${block.id}`);
    }
    assertContainedRange(
      index.dump.text,
      block.dumpRange,
      parent.dumpRange,
      block.id,
    );
    const key = `${block.functionVersionId}\0${block.number}`;
    if (blockKeys.has(key))
      throw new Error(`Duplicate block number for ${block.id}`);
    blockKeys.add(key);
  }

  const instructionKeys = new Set<string>();
  for (const instruction of index.instructionVersions) {
    const parent = functionVersions.get(instruction.functionVersionId);
    if (!parent)
      throw new Error(`Unknown function version for ${instruction.id}`);
    if (
      parent.functionId !== instruction.functionId ||
      parent.snapshotId !== instruction.snapshotId
    ) {
      throw new Error(`Inconsistent parent references for ${instruction.id}`);
    }
    assertContainedRange(
      index.dump.text,
      instruction.dumpRange,
      parent.dumpRange,
      instruction.id,
    );
    if (
      !blockKeys.has(
        `${instruction.functionVersionId}\0${instruction.basicBlockNumber}`,
      )
    ) {
      throw new Error(`Unknown basic block for ${instruction.id}`);
    }
    const key = `${instruction.functionVersionId}\0${instruction.number}`;
    if (instructionKeys.has(key)) {
      throw new Error(`Duplicate instruction number for ${instruction.id}`);
    }
    instructionKeys.add(key);
  }

  for (const event of index.inliningEvents ?? []) {
    if (!traceIds.has(event.traceId)) {
      throw new Error(`Unknown trace for ${event.id}`);
    }
    if (
      !snapshotIds.has(event.beforeSnapshotId) ||
      !snapshotIds.has(event.afterSnapshotId)
    ) {
      throw new Error(`Unknown snapshot for ${event.id}`);
    }
    if (
      traceIdBySnapshotId.get(event.beforeSnapshotId) !== event.traceId ||
      traceIdBySnapshotId.get(event.afterSnapshotId) !== event.traceId
    ) {
      throw new Error(`Snapshot outside trace for ${event.id}`);
    }
    if (
      (event.callee.functionId && !functionIds.has(event.callee.functionId)) ||
      (event.caller.functionId && !functionIds.has(event.caller.functionId))
    ) {
      throw new Error(`Unknown function for ${event.id}`);
    }
    assertRange(index.dump.text, event.dumpRange, event.id);
  }
}

function assertContainedRange(
  text: string,
  range: TextRange,
  parent: TextRange,
  label: string,
): void {
  assertRange(text, range, label);
  if (range.start < parent.start || range.end > parent.end) {
    throw new Error(`${label} lies outside its parent range`);
  }
}

function assertRange(text: string, range: TextRange, label: string): void {
  if (
    !Number.isInteger(range.start) ||
    !Number.isInteger(range.end) ||
    range.start < 0 ||
    range.start > range.end ||
    range.end > text.length
  ) {
    throw new Error(`Invalid range for ${label}: ${range.start}..${range.end}`);
  }
}
