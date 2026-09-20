# Shermes IR Pass Viewer Dump Index Format

Status: Draft, schema version 1  
Project: Shermes IR Pass Viewer

Shermes Version:
Source Commit: d79485250541b7fb637e061bee9f0de739c8b1fc
Observed on 2026-09-19

## 1. Purpose

This document specifies the JSON interchange format used by the Shermes IR
Pass Viewer. A dump index contains:

- the exact text produced by a Shermes `-Xdump-between-passes` run;
- provenance about the parser and, when available, the compiler invocation;
- ordered optimization trace segments and snapshots;
- stable identities for functions found in the dump;
- ranges locating each emitted function version and diagnostic in the embedded
  dump text.

The format is the seam between the dump parser and all consumers, including the
browser viewer and possible future editor or desktop adapters. Consumers do not
need to understand the raw Shermes dump grammar to navigate the indexed data.

This format does not specify the browser UI, diff algorithm, syntax
highlighting, compiler invocation, or storage of source JavaScript/TypeScript
files.

## 2. Requirement language

The key words **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT**, and **MAY** in
this document describe normative requirements.

For this specification "observed Shermes dump format" means the `-Xdump-between-passes` output produced by Shermes commit d79485250541b7fb637e061bee9f0de739c8b1fc.
This observation was recorded on 2026-09-19.
"observed Shermes dump format" , "shermes dump format", and "dump format" are used interchangeably.

## 3. Media type and encoding

A dump index is a JSON object encoded as UTF-8.

The suggested file extension is:

```text
.shermes-ir-index.json
```

No media type is registered for schema version 1. Tools MAY use
`application/json`.

## 4. Versioning and compatibility

### 4.1 Schema version

`schemaVersion` identifies the shape and semantics of this JSON format. It is
independent of the Shermes compiler version, release, Git commit, and dump
grammar.

Schema version 1 is represented by the JSON number `1`:

```json
{
  "format": "shermes-ir-pass-viewer-dump-index",
  "schemaVersion": 1
}
```

A producer MUST increment `schemaVersion` when it makes an incompatible change
to required structure or semantics. Adding an optional field is not inherently
incompatible.

A consumer:

- MUST reject an unsupported `schemaVersion` with a clear error;
- MUST NOT guess the meaning of an unsupported version;
- SHOULD ignore unknown object fields in a supported schema version;
- MUST enforce the invariants defined by the supported schema version.

### 4.2 Parser and compiler provenance

Parser and compiler versions describe the producer of a particular index. They
do not determine JSON compatibility.

Compiler provenance fields are optional because an imported dump might not
retain information about the compiler that produced it. When known, an exact
source commit and a release/tag description MAY both be recorded. Neither is a
sub-version of `schemaVersion`.

If Shermes later publishes an explicit dump-format version, it MAY be recorded
as `compiler.dumpFormatVersion` without changing the meaning of
`schemaVersion`.

## 5. Text and range model

### 5.1 Embedded dump text

The complete decoded dump is stored once in `dump.text`. Producers MUST retain
the dump exactly after decoding it as UTF-8. In particular, producers MUST NOT:

- normalize `LF`, `CRLF`, or lone `CR` line endings;
- trim leading or trailing whitespace;
- rewrite indentation;
- canonicalize Unicode;
- remove text that the parser does not understand.

JSON escaping performed during serialization does not alter the logical value
of `dump.text`. All ranges address the decoded string value, not byte positions
in the serialized JSON file.

Schema version 1 requires the input dump to be valid UTF-8. A producer MUST
report an input error rather than silently replacing invalid byte sequences.

### 5.2 Range encoding

All `TextRange` values use zero-based UTF-16 code-unit offsets into
`dump.text`. This matches JavaScript `String.prototype.slice` indexing.

A range is half-open:

```text
[start, end)
```

`start` is included and `end` is excluded. The following operation MUST return
the addressed text in a JavaScript implementation:

```ts
const addressedText = index.dump.text.slice(range.start, range.end);
```

For every range:

```text
0 <= start <= end <= dump.text.length
```

Range boundaries MUST NOT divide a UTF-16 surrogate pair.

Schema version 1 does not persist line and column positions. A consumer MAY
build a line-start index and derive zero-based lines and UTF-16 columns for
display or editor navigation.

### 5.3 TextRange

```ts
type TextRange = {
  start: number;
  end: number;
};
```

Both fields MUST be non-negative integers.

### 5.4 Hashes

All fields whose names end in `Sha256` contain a lowercase hexadecimal SHA-256
digest.

`dump.textSha256` is calculated from the UTF-8 encoding of the exact decoded
`dump.text` value, without normalization.

`FunctionVersion.contentSha256` is calculated from the UTF-8 encoding of:

```ts
dump.text.slice(version.dumpRange.start, version.dumpRange.end);
```

## 6. Top-level structure

```ts
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
```

All required arrays MUST be present even when empty.

The top-level `format` discriminator protects against accidentally opening an
unrelated JSON document that happens to contain `schemaVersion: 1`.

## 7. Producer provenance

```ts
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
```

Requirements:

- `parser.name` and `parser.version` MUST identify the parser implementation
  that created the index.
- `sourceCommit` fields, when present, SHOULD contain the full commit hash.
- `compiler.dirty`, when true, means the compiler build may contain changes not
  represented by `compiler.sourceCommit`.
- `compiler.binarySha256`, when present, is the digest of the compiler
  executable's bytes.
- `createdAt`, when present, MUST be an RFC 3339 timestamp.
- `invocation` MUST describe what was actually executed; a producer MUST NOT
  convert a shell command into a purported argument array or vice versa.
- Paths and commands are informational and need not be portable to another
  machine.

## 8. EmbeddedDump

```ts
type EmbeddedDump = {
  text: string;
  textSha256: string;
  sourceEncoding: "utf-8";
  rangeEncoding: "utf16-code-unit";
};
```

Schema version 1 supports only an embedded dump. External-file references,
compression, and chunked backing stores are not part of this version.

## 9. Identifiers and references

The following entities have string identifiers:

- trace segments;
- snapshots;
- functions;
- function versions;
- diagnostics;
- parse warnings.

Identifiers:

- MUST be unique within their entity collection in one `DumpIndex`;
- MUST be treated as opaque by consumers;
- need only remain stable within the containing document;
- MUST NOT be interpreted as array indexes;
- MAY be deterministically generated by the parser.

Every identifier reference MUST resolve to an entity in the same document.

## 10. Trace segments

A trace segment begins with one `*** INITIAL STATE` heading and continues up to,
but not including, the next `*** INITIAL STATE` heading or the end of the dump.

```ts
type TraceSegment = {
  id: string;
  ordinal: number;
  dumpRange: TextRange;
  scope: TraceScope;
  snapshots: Snapshot[];
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
```

Requirements:

- `ordinal` MUST be the zero-based position of the segment in dump order.
- `traceSegments` MUST be ordered by `ordinal`.
- Ordinals MUST be contiguous and equal their array positions.
- `dumpRange` MUST include the segment's `INITIAL STATE` heading and extend to
  the start of the next segment or the end of the segment text.
- `scope.kind: "module"` means snapshots in the segment dump the complete
  current module.
- `scope.kind: "function"` means snapshots dump one function, identified by
  `functionId`.
- A parser MUST use `scope.kind: "unknown"` instead of guessing when the dump
  does not provide enough evidence to distinguish module and function scope.
- If any snapshot in a trace contains more than one function, a parser using
  the current Shermes dump format MUST classify that trace as
  `scope.kind: "module"`.
- When parsing the current Shermes dump format, a parser MUST use
  `scope.kind: "unknown"` if every snapshot in a trace contains at most one
  function. The observed shermes dump format does not provide enough information to
  distinguish a module dump containing one function from an individual
  function dump.

The fact that a segment contains one function is not, by itself, proof that it
is a function-scoped trace because a module may contain only one function.
Consequently, `scope.kind: "function"` cannot
currently be inferred from the unmodified `-Xdump-between-passes` output alone.

### Why function scope cannot currently be inferred

In the current shermes dump format, when it emits `-Xdump-between-passes` output, `PassManager.cpp` dumps
either a `Module` or an individual `Function`. Both paths emit the same
`*** INITIAL STATE` and `*** AFTER <pass-name>` headings. The output does not
identify which path produced the trace.

A function-scoped dump contains one function, but a module-scoped dump may
also contain exactly one function. Therefore, a trace containing one function
is ambiguous and MUST be assigned `scope.kind: "unknown"`.

A trace containing multiple functions is unambiguous: an individual
`Function::dump()` cannot produce multiple function definitions, so the trace
must have been produced by `Module::dump()`.

## 11. Snapshots

```ts
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
```

Requirements:

- `ordinal` MUST be the snapshot's zero-based position within its trace
  segment.
- A segment's snapshots MUST be ordered by `ordinal`.
- Snapshot ordinals MUST be contiguous and equal their array positions.
- The first snapshot in a trace segment MUST have `kind: "initial"` and MUST
  have ordinal `0`.
- An initial snapshot MUST NOT contain `pass`.
- An after-pass snapshot MUST contain `pass`.
- `pass.name` is the pass label appearing after `*** AFTER`.
- `pass.occurrence` is the zero-based occurrence of that exact pass name within
  the containing trace segment up to and including this snapshot.
- Pass names are display labels and MUST NOT be used as snapshot identities.
- `headingRange` MUST address the heading text without consuming the following
  snapshot body.
- `dumpRange` MUST begin at the snapshot heading and end at the next snapshot
  heading, the next trace segment, or the end of the trace segment.

The globally unique `Snapshot.id`, not `(pass.name, pass.occurrence)`, is the
reference used by other entities.

## 12. Function identities

```ts
type FunctionIdentity = {
  id: string;
  internalName: string;
  firstSeenSnapshotId: string;
  firstHeaderRange: TextRange;
};
```

Requirements:

- `internalName` MUST be the unique internal function name printed by Shermes,
  decoded from any quoting and escaping used by the dump grammar.
- `id` MUST remain the same for that internal function name across all trace
  segments in the document.
- The complete printed function header MUST NOT be used as identity because
  types or attributes in it may change between passes.
- `firstSeenSnapshotId` MUST reference the earliest snapshot containing the
  function.
- `firstHeaderRange` MUST address that earliest printed header.

Schema version 1 assumes one continuous Shermes compilation/module identity per
dump index. If a parser detects concatenated unrelated dumps whose internal
function-name namespaces may collide, it MUST reject the input or emit separate
`DumpIndex` documents.

## 13. Function versions

```ts
type FunctionVersion = {
  id: string;
  functionId: string;
  snapshotId: string;
  dumpRange: TextRange;
  headerRange: TextRange;
  contentSha256: string;
  unreachable?: boolean;
};
```

A function version represents one function emitted in one snapshot.

Requirements:

- At most one function version MAY reference a given pair of `functionId` and
  `snapshotId`.
- `dumpRange` MUST start at the first character of the function header and end
  immediately after the `function_end` marker. It MUST NOT include a trailing
  line ending or whitespace belonging to the snapshot.
- `headerRange` MUST address the printed function header and MUST be contained
  within `dumpRange`.
- `contentSha256` MUST hash the complete text addressed by `dumpRange`,
  including the header and body.
- `unreachable`, when present, records that the emitted function is explicitly
  represented as unreachable by the dump. Absence of the field means false.

Function versions SHOULD be ordered first by their referenced snapshot's dump
order and then by their appearance within that snapshot. Consumers MUST use
identifier references and ranges rather than relying on this order for
correctness.

## 14. Diagnostics and unclassified text

```ts
type Diagnostic = {
  id: string;
  dumpRange: TextRange;
  severity?: "note" | "warning" | "error" | "unknown";
};
```

A diagnostic references compiler or runner output recognized as diagnostic
text. Its content is retrieved from the embedded dump rather than duplicated.

Requirements:

- `dumpRange` MUST address non-empty text.
- `severity` SHOULD be omitted when it cannot be classified reliably.
- Diagnostic ranges MAY occur between or within trace segments.
- Diagnostic ranges MAY overlap a snapshot range because snapshot ranges
  describe structural ownership while diagnostic ranges classify text.
- Failure to recognize diagnostic text does not permit a producer to discard
  it; it remains preserved in `dump.text`.

## 15. Parser warnings

```ts
type ParseWarning = {
  id: string;
  code: string;
  message: string;
  dumpRange?: TextRange;
};
```

Warnings describe recoverable ambiguity or malformed structure. Unlike dump
content, the warning message is generated by the parser and is therefore stored
directly.

Stable warning `code` values SHOULD be suitable for tests and filtering.
Human-readable `message` values MAY change without changing the schema version.

Examples of warning conditions include:

- an unrecognized trace scope;
- an after-pass heading before an initial snapshot;
- duplicate function identities in one snapshot;
- a present/absent/present gap for one function within a module trace;
- a range or heading that was recovered heuristically.

## 16. Derived function lifecycle

Lifecycle states used by the viewer are derived from stored facts. They are not
persisted as authoritative fields in schema version 1.

For a function in a module-scoped trace:

- **introduced**: absent from the preceding snapshot and present in the current
  snapshot;
- **unchanged**: present in both snapshots with equal `contentSha256` values;
- **changed**: present in both snapshots with different `contentSha256` values;
- **removed**: present in the preceding snapshot and absent from the current
  snapshot;
- **unreachable**: present with `FunctionVersion.unreachable` set to true.

For a function-scoped trace:

- the subject function is applicable to every snapshot;
- all other functions are **unavailable**, not removed.

For an unknown-scoped trace, a consumer MUST NOT infer removal solely from
absence.

A function absent from an unrelated trace segment is **unavailable**. Consumers
MUST NOT flatten trace segments and interpret cross-segment absence as a new
removal. A removal already established in a module-scoped trace MAY be carried
forward to a later module-scoped trace because those traces observe successive
states of the same module. It MUST NOT be carried into a function-scoped or
unknown-scoped trace, where the function may simply be outside the dump's
coverage.

Under the currently observed Shermes dump behavior, an unchanged applicable
function is still emitted. A present/absent/present gap for the same function
within a module-scoped trace is inconsistent with that behavior. A parser
SHOULD preserve the observations and emit a warning rather than substituting a
function version or classifying the gap as unchanged.

## 17. Validation invariants

A conforming schema-version-1 document satisfies all of the following:

1. `format` and `schemaVersion` have their required literal values.
2. `dump.textSha256` matches `dump.text`.
3. Every range is within `dump.text` and has valid UTF-16 boundaries.
4. Entity identifiers are unique within their collections.
5. Every identifier reference resolves.
6. Trace and snapshot ordinals are ordered and contiguous.
7. Every trace begins with exactly one initial snapshot.
8. Snapshot and segment ranges follow dump order and their documented nesting.
9. Every function version range is contained in its referenced snapshot range.
10. Every function version header range is contained in its function version
    range.
11. Every function version content hash matches its addressed text.
12. No snapshot contains two versions of the same function identity.
13. Every function's `firstSeenSnapshotId` and `firstHeaderRange` identify its
    earliest emitted version.

A consumer MAY continue with a document containing non-fatal parser warnings,
but it MUST reject violated structural invariants that make identifier or range
resolution unsafe.

## 18. Example

This example satisfies the range and hash requirements of the format.

```json
{
  "format": "shermes-ir-pass-viewer-dump-index",
  "schemaVersion": 1,
  "producer": {
    "parser": {
      "name": "ir-pass-viewer",
      "version": "0.1.0"
    },
    "compiler": {
      "reportedVersion": "Static Hermes JS Compiler v0.0",
      "sourceCommit": "d79485250541b7fb637e061bee9f0de739c8b1fc",
      "gitDescribe": "v0.12.0-5615-gd79485250-dirty",
      "dirty": true
    },
    "invocation": {
      "kind": "argv",
      "executable": "./debug_build/bin/shermes",
      "arguments": ["-typed", "-Xdump-between-passes", "input.ts"],
      "workingDirectory": "/work/shermes"
    }
  },
  "dump": {
    "text": "*** INITIAL STATE\n\nfunction main(): undefined \n%BB0:\n       ReturnInst undefined: undefined\nfunction_end\n",
    "textSha256": "465b416fd011b30ac37cc3e39a67d8a2c33e635b1b478e35e938c56f95499b30",
    "sourceEncoding": "utf-8",
    "rangeEncoding": "utf16-code-unit"
  },
  "traceSegments": [
    {
      "id": "trace-0",
      "ordinal": 0,
      "dumpRange": { "start": 0, "end": 105 },
      "scope": { "kind": "unknown" },
      "snapshots": [
        {
          "id": "snapshot-0-0",
          "ordinal": 0,
          "kind": "initial",
          "headingRange": { "start": 0, "end": 17 },
          "dumpRange": { "start": 0, "end": 105 }
        }
      ]
    }
  ],
  "functions": [
    {
      "id": "function-0",
      "internalName": "main",
      "firstSeenSnapshotId": "snapshot-0-0",
      "firstHeaderRange": { "start": 19, "end": 46 }
    }
  ],
  "functionVersions": [
    {
      "id": "function-version-0",
      "functionId": "function-0",
      "snapshotId": "snapshot-0-0",
      "dumpRange": { "start": 19, "end": 104 },
      "headerRange": { "start": 19, "end": 46 },
      "contentSha256": "2d5e91a80b58fc97511c2c456330a185977b0067e1ea721cd35d86fd343b616a"
    }
  ],
  "diagnostics": []
}
```

## 19. Deferred features

The following are deliberately outside schema version 1:

- external or lazily loaded dump backing files;
- compressed or chunked dump storage;
- UTF-8-byte ranges or persisted line/column positions;
- source-file contents and source maps;
- normalized or structural IR representations;
- syntax tokens or highlighting data;
- precomputed textual diffs;
- authoritative persisted lifecycle states;
- cross-document function identities;
- command-runner output that was not selected as the indexed dump.

These features require evidence from the initial implementation before they are
added to the interchange interface.
