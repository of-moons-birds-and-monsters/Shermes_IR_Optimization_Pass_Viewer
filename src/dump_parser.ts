export type TextRange = {
  start: number;
  end: number;
};
export type DumpIndex = {
  format: "shermes-ir-pass-viewer-dump-index";
  schemaVersion: 1;
  producer: Producer;
  dump: EmbeddedDump;
  traceSegments: TraceSegment[];
  functions: FunctionIdentity[];
  functionVersions: FunctionVersion[];
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
  unreachable?: boolean;
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
  functionId: string;
  snapshotId: string;
  start: number;
  headerRange: TextRange;
  unreachable: boolean;
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
    version: "0.1.0",
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
        functionId: identity.id,
        snapshotId: currentSnapshot.id,
        start: line.start,
        headerRange: { start: line.start, end: line.contentEnd },
        unreachable: hasUnreachableAttribute(line.text),
      };
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

      functionVersions.push({
        id: `function-version:${functionVersions.length}`,
        functionId: openFunction.functionId,
        snapshotId: openFunction.snapshotId,
        dumpRange: { start: openFunction.start, end: line.contentEnd },
        headerRange: openFunction.headerRange,
        contentSha256: "",
        ...(openFunction.unreachable ? { unreachable: true } : {}),
      });
      openFunction = undefined;
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
  } else if (firstTraceOffset > 0 && text.slice(0, firstTraceOffset).length > 0) {
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

  return {
    format: "shermes-ir-pass-viewer-dump-index",
    schemaVersion: 1,
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

function parseFunctionHeader(
  line: string,
): { kind: (typeof FUNCTION_HEADER_KINDS)[number]; internalName: string } | undefined {
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

async function sha256Hex(text: string): Promise<string> {
  const data = new TextEncoder().encode(text);
  const digest = await globalThis.crypto.subtle.digest("SHA-256", data);
  return [...new Uint8Array(digest)]
    .map((byte) => byte.toString(16).padStart(2, "0"))
    .join("");
}
