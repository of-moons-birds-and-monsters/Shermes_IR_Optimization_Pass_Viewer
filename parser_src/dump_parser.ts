export type TextRange = {
  start: number;
  end: number;
};
export type DumpIndex = {
  format: "shermes-ir-pass-viewer-dump-index";
  schemaVersion: 2;
  producer: Producer;
  dump: EmbeddedDump;
  traceSegments: TraceSegment[];
  functions: FunctionIdentity[];
  functionVersions: FunctionVersion[];
  basicBlockVersions: BasicBlockVersion[];
  instructionVersions: InstructionVersion[];
  diagnostics: Diagnostic[];
  warnings?: ParseWarning[];
};
export type Producer = {
  parser: {
    name: string;
    version: string;
    sourceCommit?: string;
  };
  compiler?: CompilerProvenance;
  invocation?: Invocation;
  createdAt?: string;
};
export type EmbeddedDump = {
  text: string;
  textSha256: string;
  sourceEncoding: "utf-8";
  rangeEncoding: "utf16-code-unit";
};
export type TraceSegment = {
  id: string;
  ordinal: number;
  dumpRange: TextRange;
  scope: TraceScope;
  snapshots: Snapshot[];
};
export type Snapshot = {
  id: string;
  ordinal: number;
  kind: "initial" | "after-pass";
  pass?: PassInvocation;
  headingRange: TextRange;
  dumpRange: TextRange;
};

export type PassInvocation = {
  name: string;
  occurrence: number;
};

export type TraceScope =
  | {
    kind: "module";
  }
  | {
    kind: "function";
    functionId: string;
  }
  | {
    kind: "unknown";
  };

export type CompilerProvenance = {
  reportedVersion?: string;
  sourceCommit?: string;
  gitDescribe?: string;
  dirty?: boolean;
  binarySha256?: string;
  dumpFormatVersion?: string;
};

export type Invocation =
  | {
    kind: "argv";
    executable: string;
    arguments: string[];
    workingDirectory?: string;
  }
  | {
    kind: "shell";
    command: string;
    workingDirectory?: string;
  };
export type FunctionIdentity = {
  id: string;
  internalName: string;
  firstSeenSnapshotId: string;
  firstHeaderRange: TextRange;
};
export type FunctionVersion = {
  id: string;
  functionId: string;
  snapshotId: string;
  dumpRange: TextRange;
  headerRange: TextRange;
  contentSha256: string;
  unreachable: boolean;
};
export type BasicBlockVersion = {
  id: string;
  functionVersionId: string;
  functionId: string;
  snapshotId: string;
  number: number;
  ordinal: number;
  dumpRange: TextRange;
  contentSha256: string;
};
export type InstructionVersion = {
  id: string;
  functionVersionId: string;
  functionId: string;
  snapshotId: string;
  number: number;
  basicBlockNumber: number;
  ordinalInBlock: number;
  dumpRange: TextRange;
  contentSha256: string;
};
export type Diagnostic = {
  id: string;
  dumpRange: TextRange;
  severity?: "note" | "warning" | "error" | "unknown";
};
export type ParseWarning = {
  id: string;
  code: string;
  message: string;
  dumpRange?: TextRange;
};

export type BuildDumpIndexOptions = {
  producer?: Producer;
};

type DumpLine = {
  text: string;
  start: number;
  contentEnd: number;
  end: number;
};

type OpenFunction = {
  versionId: string;
  functionId: string;
  snapshotId: string;
  start: number;
  headerRange: TextRange;
  unreachable: boolean;
  blocks: BasicBlockVersion[];
  instructions: InstructionVersion[];
  currentBlock?: BasicBlockVersion;
  instructionOrdinal: number;
};

const FUNCTION_HEADER_KINDS = [
  "base constructor",
  "derived constructor",
  "generator inner",
  "function",
  "arrow",
  "method",
] as const;

const DEFAULT_PRODUCER: Producer = {
  parser: {
    name: "ir-pass-viewer",
    version: "0.2.0",
  },
};

export async function buildDumpIndex(
  input: Uint8Array,
  options?: BuildDumpIndexOptions,
): Promise<DumpIndex> {
  const text = new TextDecoder("utf-8", { fatal: true }).decode(input);
  const traceSegments: TraceSegment[] = [];
  const functions: FunctionIdentity[] = [];
  const functionVersions: FunctionVersion[] = [];
  const basicBlockVersions: BasicBlockVersion[] = [];
  const instructionVersions: InstructionVersion[] = [];
  const blockInstructionLines = new Map<string, string[]>();
  const diagnostics: Diagnostic[] = [];
  const warnings: ParseWarning[] = [];
  const functionByInternalName = new Map<string, FunctionIdentity>();
  const versionsBySnapshot = new Map<string, Set<string>>();

  let currentTrace: TraceSegment | undefined;
  let currentSnapshot: Snapshot | undefined;
  let currentPassOccurrences = new Map<string, number>();
  let openFunction: OpenFunction | undefined;
  let firstTraceOffset: number | undefined;

  const addWarning = (
    code: string,
    message: string,
    dumpRange?: TextRange,
  ): void => {
    warnings.push({
      id: `warning:${warnings.length}`,
      code,
      message,
      ...(dumpRange ? { dumpRange } : {}),
    });
  };

  const closeOpenFunctionAsWarning = (at: number): void => {
    if (!openFunction) {
      return;
    }
    addWarning(
      "unterminated-function",
      "A function header was not followed by function_end.",
      { start: openFunction.start, end: at },
    );
    openFunction = undefined;
  };

  const closeSnapshot = (end: number): void => {
    if (currentSnapshot) {
      currentSnapshot.dumpRange.end = end;
    }
  };

  const closeTrace = (end: number): void => {
    if (currentTrace) {
      currentTrace.dumpRange.end = end;
    }
  };

  for (const line of linesOf(text)) {
    const isInitial = line.text === "*** INITIAL STATE";
    const afterMatch = /^\*\*\* AFTER (.+)$/.exec(line.text);

    if (isInitial) {
      closeOpenFunctionAsWarning(line.start);
      closeSnapshot(line.start);
      closeTrace(line.start);

      if (firstTraceOffset === undefined) {
        firstTraceOffset = line.start;
      }

      const traceOrdinal = traceSegments.length;
      currentPassOccurrences = new Map<string, number>();
      currentTrace = {
        id: `trace:${traceOrdinal}`,
        ordinal: traceOrdinal,
        dumpRange: { start: line.start, end: text.length },
        scope: { kind: "unknown" },
        snapshots: [],
      };
      traceSegments.push(currentTrace);

      currentSnapshot = {
        id: `snapshot:${traceOrdinal}:0`,
        ordinal: 0,
        kind: "initial",
        headingRange: { start: line.start, end: line.contentEnd },
        dumpRange: { start: line.start, end: text.length },
      };
      currentTrace.snapshots.push(currentSnapshot);
      continue;
    }

    if (afterMatch) {
      closeOpenFunctionAsWarning(line.start);
      if (!currentTrace) {
        addWarning(
          "pass-before-initial",
          "An after-pass snapshot appeared before an initial snapshot.",
          { start: line.start, end: line.contentEnd },
        );
        continue;
      }

      closeSnapshot(line.start);
      const passName = afterMatch[1];
      const occurrence = currentPassOccurrences.get(passName) ?? 0;
      currentPassOccurrences.set(passName, occurrence + 1);
      const snapshotOrdinal = currentTrace.snapshots.length;
      currentSnapshot = {
        id: `snapshot:${currentTrace.ordinal}:${snapshotOrdinal}`,
        ordinal: snapshotOrdinal,
        kind: "after-pass",
        pass: { name: passName, occurrence },
        headingRange: { start: line.start, end: line.contentEnd },
        dumpRange: { start: line.start, end: text.length },
      };
      currentTrace.snapshots.push(currentSnapshot);
      continue;
    }

    const parsedHeader = parseFunctionHeader(line.text);
    if (parsedHeader) {
      if (!currentSnapshot) {
        addWarning(
          "function-before-initial",
          "A function header appeared before an initial snapshot.",
          { start: line.start, end: line.contentEnd },
        );
        continue;
      }
      closeOpenFunctionAsWarning(line.start);

      let identity = functionByInternalName.get(parsedHeader.internalName);
      if (!identity) {
        identity = {
          id: `function:${functions.length}`,
          internalName: parsedHeader.internalName,
          firstSeenSnapshotId: currentSnapshot.id,
          firstHeaderRange: { start: line.start, end: line.contentEnd },
        };
        functions.push(identity);
        functionByInternalName.set(identity.internalName, identity);
      }

      const snapshotFunctions =
        versionsBySnapshot.get(currentSnapshot.id) ?? new Set<string>();
      versionsBySnapshot.set(currentSnapshot.id, snapshotFunctions);
      if (snapshotFunctions.has(identity.id)) {
        addWarning(
          "duplicate-function-in-snapshot",
          `Function ${JSON.stringify(identity.internalName)} appears more than once in one snapshot.`,
          { start: line.start, end: line.contentEnd },
        );
        continue;
      }
      snapshotFunctions.add(identity.id);

      openFunction = {
        versionId: `function-version:${functionVersions.length}`,
        functionId: identity.id,
        snapshotId: currentSnapshot.id,
        start: line.start,
        headerRange: { start: line.start, end: line.contentEnd },
        unreachable: hasUnreachableAttribute(line.text),
        blocks: [],
        instructions: [],
        instructionOrdinal: 0,
      };
      continue;
    }

    const blockMatch = /^%BB(\d+):$/.exec(line.text);
    if (blockMatch && openFunction) {
      const blockNumber = parseIrNumber(blockMatch[1], "basic block", line);
      if (openFunction.currentBlock) {
        openFunction.currentBlock.dumpRange.end = line.start;
      }
      const block: BasicBlockVersion = {
        id: `basic-block-version:${basicBlockVersions.length + openFunction.blocks.length}`,
        functionVersionId: openFunction.versionId,
        functionId: openFunction.functionId,
        snapshotId: openFunction.snapshotId,
        number: blockNumber,
        ordinal: openFunction.blocks.length,
        dumpRange: { start: line.start, end: line.end },
        contentSha256: "",
      };
      openFunction.blocks.push(block);
      openFunction.currentBlock = block;
      openFunction.instructionOrdinal = 0;
      blockInstructionLines.set(block.id, []);
      continue;
    }

    if (line.text === "function_end") {
      if (!openFunction) {
        addWarning(
          "function-end-without-header",
          "A function_end marker appeared without a preceding function header.",
          { start: line.start, end: line.contentEnd },
        );
        continue;
      }

      if (openFunction.currentBlock) {
        openFunction.currentBlock.dumpRange.end = line.start;
      }

      functionVersions.push({
        id: openFunction.versionId,
        functionId: openFunction.functionId,
        snapshotId: openFunction.snapshotId,
        dumpRange: { start: openFunction.start, end: line.contentEnd },
        headerRange: openFunction.headerRange,
        contentSha256: "",
        unreachable: openFunction.unreachable,
      });
      basicBlockVersions.push(...openFunction.blocks);
      instructionVersions.push(...openFunction.instructions);
      openFunction = undefined;
      continue;
    }

    if (
      openFunction?.currentBlock &&
      line.text.length > 0 &&
      !/^\s*;/.test(line.text)
    ) {
      blockInstructionLines.get(openFunction.currentBlock.id)?.push(line.text);
      const instructionMatch = /^\s*%(\d+)\s*=/.exec(line.text);
      if (instructionMatch) {
        const instructionNumber = parseIrNumber(
          instructionMatch[1],
          "instruction",
          line,
        );
        openFunction.instructions.push({
          id: `instruction-version:${instructionVersions.length + openFunction.instructions.length}`,
          functionVersionId: openFunction.versionId,
          functionId: openFunction.functionId,
          snapshotId: openFunction.snapshotId,
          number: instructionNumber,
          basicBlockNumber: openFunction.currentBlock.number,
          ordinalInBlock: openFunction.instructionOrdinal,
          dumpRange: { start: line.start, end: line.contentEnd },
          contentSha256: "",
        });
      }
      openFunction.instructionOrdinal += 1;
    }
  }

  closeOpenFunctionAsWarning(text.length);
  closeSnapshot(text.length);
  closeTrace(text.length);

  if (firstTraceOffset === undefined) {
    if (text.length > 0) {
      diagnostics.push({
        id: "diagnostic:0",
        dumpRange: { start: 0, end: text.length },
        severity: inferDiagnosticSeverity(text),
      });
    }
    addWarning("no-ir-snapshots", "No IR snapshots were found in the dump.");
  } else if (
    firstTraceOffset > 0 &&
    text.slice(0, firstTraceOffset).length > 0
  ) {
    const preamble = text.slice(0, firstTraceOffset);
    diagnostics.push({
      id: "diagnostic:0",
      dumpRange: { start: 0, end: firstTraceOffset },
      severity: inferDiagnosticSeverity(preamble),
    });
  }

  inferTraceScopes(traceSegments, versionsBySnapshot);
  addLifecycleWarnings(
    traceSegments,
    functions,
    versionsBySnapshot,
    addWarning,
  );

  const textSha256 = await sha256Hex(text);
  await hashFunctionVersions(text, functionVersions);
  await hashInstructionVersions(text, instructionVersions);
  await hashBasicBlockVersions(basicBlockVersions, blockInstructionLines);

  return {
    format: "shermes-ir-pass-viewer-dump-index",
    schemaVersion: 2,
    producer: options?.producer ?? DEFAULT_PRODUCER,
    dump: {
      text,
      textSha256,
      sourceEncoding: "utf-8",
      rangeEncoding: "utf16-code-unit",
    },
    traceSegments,
    functions,
    functionVersions,
    basicBlockVersions,
    instructionVersions,
    diagnostics,
    warnings,
  };
}

function* linesOf(text: string): Generator<DumpLine> {
  let start = 0;
  while (start < text.length) {
    let contentEnd = start;
    while (
      contentEnd < text.length &&
      text[contentEnd] !== "\n" &&
      text[contentEnd] !== "\r"
    ) {
      contentEnd += 1;
    }

    let end = contentEnd;
    if (text[end] === "\r" && text[end + 1] === "\n") {
      end += 2;
    } else if (text[end] === "\r" || text[end] === "\n") {
      end += 1;
    }

    yield {
      text: text.slice(start, contentEnd),
      start,
      contentEnd,
      end,
    };
    start = end;
  }
}

function parseIrNumber(text: string, kind: string, line: DumpLine): number {
  const number = Number.parseInt(text, 10);
  if (!Number.isSafeInteger(number)) {
    throw new RangeError(
      `The ${kind} number at UTF-16 offset ${line.start} exceeds the safe integer range.`,
    );
  }
  return number;
}

function parseFunctionHeader(
  line: string,
):
  | { kind: (typeof FUNCTION_HEADER_KINDS)[number]; internalName: string }
  | undefined {
  for (const kind of FUNCTION_HEADER_KINDS) {
    const prefix = `${kind} `;
    if (!line.startsWith(prefix)) {
      continue;
    }

    const nameStart = prefix.length;
    if (line[nameStart] === '"') {
      const quoted = parseQuotedName(line, nameStart);
      if (quoted && line[quoted.end] === "(") {
        return { kind, internalName: quoted.value };
      }
      return undefined;
    }

    const nameEnd = line.indexOf("(", nameStart);
    if (nameEnd === -1) {
      return undefined;
    }
    return { kind, internalName: line.slice(nameStart, nameEnd) };
  }
  return undefined;
}

function parseQuotedName(
  text: string,
  quoteStart: number,
): { value: string; end: number } | undefined {
  let value = "";
  for (let index = quoteStart + 1; index < text.length; index += 1) {
    const character = text[index];
    if (character === '"') {
      return { value, end: index + 1 };
    }
    if (character !== "\\") {
      value += character;
      continue;
    }

    index += 1;
    if (index >= text.length) {
      return undefined;
    }
    const escaped = text[index];
    if (escaped === "n") value += "\n";
    else if (escaped === "r") value += "\r";
    else if (escaped === "t") value += "\t";
    else if (escaped === '"') value += '"';
    else if (escaped === "\\") value += "\\";
    else if (escaped === "x") {
      const hex = text.slice(index + 1, index + 3);
      if (!/^[0-9A-Fa-f]{2}$/.test(hex)) {
        return undefined;
      }
      value += String.fromCharCode(Number.parseInt(hex, 16));
      index += 2;
    } else {
      value += escaped;
    }
  }
  return undefined;
}

function hasUnreachableAttribute(header: string): boolean {
  const attributes = /\[([^\]]*)\]\s*$/.exec(header)?.[1];
  return attributes?.split(",").includes("unreachable") ?? false;
}

function inferDiagnosticSeverity(text: string): Diagnostic["severity"] {
  if (/(?:^|\n).*\berror:/m.test(text)) return "error";
  if (/(?:^|\n).*\bwarning:/m.test(text)) return "warning";
  if (/(?:^|\n).*\bnote:/m.test(text)) return "note";
  return "unknown";
}

function inferTraceScopes(
  traces: TraceSegment[],
  versionsBySnapshot: Map<string, Set<string>>,
): void {
  for (const trace of traces) {
    const isDefinitelyModule = trace.snapshots.some(
      (snapshot) => (versionsBySnapshot.get(snapshot.id)?.size ?? 0) > 1,
    );
    if (isDefinitelyModule) {
      trace.scope = { kind: "module" };
    }
  }
}

function addLifecycleWarnings(
  traces: TraceSegment[],
  functions: FunctionIdentity[],
  versionsBySnapshot: Map<string, Set<string>>,
  addWarning: (code: string, message: string, range?: TextRange) => void,
): void {
  for (const trace of traces) {
    if (trace.scope.kind !== "module") {
      continue;
    }
    for (const identity of functions) {
      let wasPresent = false;
      let disappeared = false;
      for (const snapshot of trace.snapshots) {
        const isPresent =
          versionsBySnapshot.get(snapshot.id)?.has(identity.id) ?? false;
        if (wasPresent && !isPresent) {
          disappeared = true;
        } else if (disappeared && isPresent) {
          addWarning(
            "present-absent-present",
            `Function ${JSON.stringify(identity.internalName)} reappeared after being absent in one module trace.`,
            snapshot.headingRange,
          );
          break;
        }
        wasPresent = isPresent;
      }
    }
  }
}

async function hashFunctionVersions(
  text: string,
  versions: FunctionVersion[],
): Promise<void> {
  const batchSize = 64;
  for (let start = 0; start < versions.length; start += batchSize) {
    const batch = versions.slice(start, start + batchSize);
    await Promise.all(
      batch.map(async (version) => {
        version.contentSha256 = await sha256Hex(
          text.slice(version.dumpRange.start, version.dumpRange.end),
        );
      }),
    );
  }
}

async function hashInstructionVersions(
  text: string,
  versions: InstructionVersion[],
): Promise<void> {
  await hashInBatches(versions, async (version) => {
    version.contentSha256 = await sha256Hex(
      text.slice(version.dumpRange.start, version.dumpRange.end),
    );
  });
}

async function hashBasicBlockVersions(
  versions: BasicBlockVersion[],
  instructionLines: Map<string, string[]>,
): Promise<void> {
  const encoder = new TextEncoder();
  await hashInBatches(versions, async (version) => {
    const encodedLines = (instructionLines.get(version.id) ?? []).map((line) =>
      encoder.encode(line),
    );
    const size = encodedLines.reduce(
      (total, line) => total + 8 + line.length,
      0,
    );
    const data = new Uint8Array(size);
    const view = new DataView(data.buffer);
    let offset = 0;
    for (const line of encodedLines) {
      view.setBigUint64(offset, BigInt(line.length), false);
      offset += 8;
      data.set(line, offset);
      offset += line.length;
    }
    version.contentSha256 = await sha256Bytes(data);
  });
}

async function hashInBatches<T>(
  values: T[],
  hash: (value: T) => Promise<void>,
): Promise<void> {
  const batchSize = 64;
  for (let start = 0; start < values.length; start += batchSize) {
    await Promise.all(values.slice(start, start + batchSize).map(hash));
  }
}

async function sha256Hex(text: string): Promise<string> {
  return sha256Bytes(new TextEncoder().encode(text));
}

async function sha256Bytes(data: Uint8Array): Promise<string> {
  const buffer = new ArrayBuffer(data.byteLength);
  new Uint8Array(buffer).set(data);
  const digest = await globalThis.crypto.subtle.digest("SHA-256", buffer);
  return [...new Uint8Array(digest)]
    .map((byte) => byte.toString(16).padStart(2, "0"))
    .join("");
}
