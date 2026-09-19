type TextRange = {
  start: number;
  end: number;
};
type DumpIndex = {
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
type Producer = {
  parser: {
    name: string;
    version: string;
    sourceCommit?: string;
  };
  compiler?: CompilerProvenance;
  invocation?: Invocation;
  createdAt?: string;
};
type EmbeddedDump = {
  text: string;
  textSha256: string;
  sourceEncoding: "utf-8";
  rangeEncoding: "utf16-code-unit";
};
type TraceSegment = {
  id: string;
  ordinal: number;
  dumpRange: TextRange;
  scope: TraceScope;
  snapshots: Snapshot[];
};
type Snapshot = {
  id: string;
  ordinal: number;
  kind: "initial" | "after-pass";
  pass?: PassInvocation;
  headingRange: TextRange;
  dumpRange: TextRange;
};

type PassInvocation = {
  name: string;
  occurrence: number;
};

type TraceScope =
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

type CompilerProvenance = {
  reportedVersion?: string;
  sourceCommit?: string;
  gitDescribe?: string;
  dirty?: boolean;
  binarySha256?: string;
  dumpFormatVersion?: string;
};

type Invocation =
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
type FunctionIdentity = {
  id: string;
  internalName: string;
  firstSeenSnapshotId: string;
  firstHeaderRange: TextRange;
};
type FunctionVersion = {
  id: string;
  functionId: string;
  snapshotId: string;
  dumpRange: TextRange;
  headerRange: TextRange;
  contentSha256: string;
  unreachable?: boolean;
};
type Diagnostic = {
  id: string;
  dumpRange: TextRange;
  severity?: "note" | "warning" | "error" | "unknown";
};
type ParseWarning = {
  id: string;
  code: string;
  message: string;
  dumpRange?: TextRange;
};

type BuildDumpIndexOptions = {};

async function buildDumpIndex(
  input: Uint8Array,
  options?: BuildDumpIndexOptions,
): Promise<DumpIndex> { }
