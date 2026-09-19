# Shermes IR Pass Viewer — Decision Map

## Direction already chosen

Build the first version as a local web application in TypeScript, using Monaco's
diff editor. Keep dump parsing and indexing in a UI-independent TypeScript
package with a versioned JSON output format. The application should accept an
existing `-Xdump-between-passes` dump before it learns to invoke Shermes itself.

This gives the primary UI a searchable function list, ordered pass timeline,
and both inline and side-by-side diffs without committing the core to one
editor. A later Neovim adapter can invoke the same CLI and open extracted
versions in native diff buffers. Do not start with Electron, Tauri, an LSP, or a
native C/C++ GUI.

The initial display is a textual IR diff. “Overlay” means a unified/inline diff
that interleaves deletions and additions, not two translucent texts drawn over
one another.

The dump format observed in the current debug compiler has these constraints:

- output is written to stderr;
- snapshots begin with `*** INITIAL STATE` or `*** AFTER <pass>`;
- another `INITIAL STATE` starts another optimization trace segment;
- some trace segments dump the entire module after each pass, while later
  segments can run the same pass sequence separately for each function;
- a pass name is a label, not an identity: a pass such as `DCE` can run more
  than once in one module-level trace, and a pass such as
  `RecreateCheapValues` can appear once in each per-function trace;
- snapshot identity must therefore include the trace-segment ordinal and the
  pass-invocation ordinal within that segment;
- functions are delimited by a `function ...` header and `function_end`;
- functions can disappear, become unreachable, or have duplicate/anonymous
  display names.

## 1. Define reliable snapshot and function identity

**Blocked by:** Nothing

**Type:** Prototype

**Question:** Can a streaming parser consistently recover stages, snapshots,
scopes, and the same logical function across all Shermes pipelines, including
anonymous or duplicate names and removed functions?

**Answer:** Build the parser first and exercise it against several real dumps.
Use `(trace-segment ordinal, pass-invocation ordinal)` for snapshots, retaining
the displayed pass name as a label. A trace segment starts at `INITIAL STATE`
and continues through its following `AFTER` dumps. Initially identify a
function by the unique internal function name already printed in its header,
while retaining its complete raw header, definition kind, scope, source
location if present, and body. Do not use the complete header as identity,
because inferred types or attributes in it may change between passes. Record
absence explicitly and hash bodies so unchanged snapshots can be collapsed.

Shermes already creates a persistent `irdumper::Namer` on `Context` when
`-Xdump-between-passes` is active. Its per-function state is keyed by
`Function *`, while instruction and basic-block labels are keyed by their
pointers and retained across dump generations. Consequently, a surviving IR
object normally keeps its printed number between passes. Function headers use
`Function::internalName_`, which `Module::deriveUniqueInternalName()` makes
unique for the module and which remains attached to the surviving `Function`.
This should be sufficient for the viewer without patching Shermes.

Treat printed instruction and basic-block numbers as stable display labels,
not globally reliable semantic identities: deleted objects leave pointer-keyed
namer entries temporarily, and allocator address reuse can theoretically make
a new same-kind object inherit an old number. The current namer also does not
print an analogous numeric ID for a `Function`.

Only if real fixtures show internal names becoming ambiguous should we patch
Shermes. The smallest maintainable patch would add an explicit machine-readable
function identity to dump headers at the printing seam, without changing the
IR or optimizer. Keep that patch isolated so it can be reapplied to new
Shermes revisions. Do not build fuzzy cross-pass matching first.

Success means fixtures cover a repeated pass within one module-level trace,
the same pass sequence across separate per-function traces, repeated
`INITIAL STATE`, duplicate source-level names with distinct internal names,
unreachable functions, and removal.

## 2. Establish the core interchange model

**Blocked by:** 1

**Type:** Discuss

**Question:** What is the smallest interface that supports the web UI and later
editor integrations without turning the tool into a daemon or language server?

**Answer:** Define a versioned `DumpIndex` JSON schema and expose it through a
TypeScript library and CLI. The schema version belongs to the viewer format; it
must not be derived from the Shermes release or commit. Increment it only when
the meaning or shape of `DumpIndex` changes incompatibly. Record the Shermes
build separately as producer provenance, using all information available:

- the compiler's reported version (currently `Static Hermes JS Compiler
  v0.0` in the checked build);
- an optional exact source commit;
- an optional `git describe` string, including a dirty marker;
- an optional compiler-binary SHA-256, which distinguishes different dirty or
  differently configured builds from the same source commit;
- the compiler invocation and relevant flags;
- the parser/viewer package version.

Release versions and commits are complementary metadata rather than a dual
schema version. Imported dumps may lack some or all compiler provenance, so
these fields must be optional. A commit identifies the exact source tree when
known; a release/tag is a human-readable label. Neither says that the dump
grammar changed. If Shermes later publishes an explicit dump-format version,
record that as another producer field.

Store the original dump once as an embedded backing document and refer to its
contents using half-open text ranges. Function versions, whole snapshots, and
diagnostic chunks should carry ranges into that backing text instead of
duplicating their contents. This preserves the complete dump if the original
file is deleted, retains otherwise-unparsed text, and lets the UI materialize
only the selected function bodies.

For the TypeScript-first implementation, define offsets explicitly as UTF-16
code-unit offsets into the decoded `dump.text`, matching JavaScript's
`String.prototype.slice`. Name these fields `dumpRange` or `textRange`, not
`sourceRange`, to avoid confusion with source-code locations printed in the IR.
Store a SHA-256 digest of the decoded backing text so ranges can be validated
if an external-document storage mode is added later.

Range offsets are zero-based and half-open: `start` is included and `end` is
excluded. Preserve `dump.text` exactly as emitted after decoding; in particular,
do not normalize `LF`, `CRLF`, or lone `CR` line endings. The initial schema
does not persist line and column positions. The editor may build a line-start
index and derive zero-based lines and UTF-16 columns for display and navigation
later.

A preliminary shape is:

```ts
type DumpIndex = {
  schemaVersion: 1;
  producer: {
    parserVersion: string;
    compiler?: {
      reportedVersion?: string;
      sourceCommit?: string;
      gitDescribe?: string;
      dirty?: boolean;
      binarySha256?: string;
      invocation?: string[];
    };
  };
  dump: {
    text: string;
    sha256: string;
    rangeEncoding: "utf16-code-unit";
  };
  traceSegments: TraceSegment[];
  functions: FunctionIdentity[];
  functionVersions: FunctionVersion[];
  diagnostics: TextRange[];
};

type TextRange = {
  start: number;
  end: number;
};

type FunctionVersion = {
  functionId: string;
  snapshotId: string;
  dumpRange: TextRange;
  bodyHash: string;
};
```

This is a logical draft, not yet the final normalized layout. Measure real large
dumps before adding compression, external-file references, byte-oriented
ranges, or body deduplication. Those storage strategies can be introduced as a
new discriminated backing-document representation without changing the
function-history model.

## 3. Prototype the function-history UI

**Blocked by:** 1, 2

**Type:** Prototype

**Question:** Which controls make optimizer-caused changes and removals quickest
to locate?

**Answer:** Prototype one screen with:

- a searchable function list with lifecycle status;
- selectors for comparison sides A and B, each containing a function and a
  snapshot, grouped by trace segment;
- a function timeline marking introduced, changed, unchanged, unreachable,
  removed, and unavailable states;
- separate previous/next snapshot and previous/next change navigation;
- an “only changed snapshots” toggle;
- Monaco inline and side-by-side diff modes;
- explicit status banners when a comparison side is unchanged, unavailable,
  introduced, or removed.

The current Shermes dumper prints the target function after every pass in a
function pass-manager run and prints the complete current module after every
pass in a module pass-manager run. It does not omit a surviving function merely
because that pass made no changes. Therefore:

- **unchanged** means that the function is present and its body hash equals its
  preceding version in that trace;
- **removed** means that the function was present and then disappeared within
  the same module-level trace;
- **unavailable** means that the function is outside the coverage of a trace,
  such as another function's per-function pass-manager run;
- **introduced** means that the internal function name first appears within a
  module-level trace;
- **unreachable** remains a present function whose emitted body says it is
  unreachable.

Do not infer removal by flattening all trace segments into one sequence. A
function absent from another function's trace is merely unavailable. Under the
current dumping behavior, a stable function identity should not have a
present/absent/present gap within one trace. If a fixture violates that
invariant, preserve the unknown state and report a parser warning rather than
silently calling the gap unchanged.

Navigation operates on function histories rather than raw global dump order:

- With one function selected, previous/next snapshot moves through every
  applicable emitted version, while previous/next change skips equal body
  hashes and stops at lifecycle transitions.
- With two functions selected, each comparison side owns its function and
  current version. Unlinked navigation moves only the active side.
- Linked navigation moves both histories together. When both functions occur
  in the same module-level trace, they use the same snapshot identity. When
  they occur in separate per-function traces with the same ordered pass
  sequence, align them by relative pass-invocation ordinal, retaining the pass
  name and occurrence as a validation check.
- If the histories cannot be aligned safely, disable linked navigation and
  explain why rather than silently comparing unrelated passes.

In linked **snapshot** mode, advance one pass position even if one or both
function bodies are unchanged; show a `No change in this pass` banner for an
unchanged side. In linked **change** mode, advance to the next aligned position
where either selected function changes, and keep the other side at that same
position with the same banner if it did not change. A removed side uses an
empty diff model plus a removal banner; an unavailable side uses a distinct
unavailable banner and must not be described as removed.

Validate the workflow on the typed-class inlining failure before adding visual
polish.

## 4. Keep compiler execution generic and optional

**Blocked by:** 1, 2

**Type:** Prototype

**Question:** Does the viewer need a Shermes-specific compiler runner?

**Answer:** No. Existing dump-file import is the primary workflow. If command
execution is added, expose a generic command text input and working-directory
input. Execute the text through the user's local shell exactly as requested;
do not construct a Shermes invocation, interpret compiler flags, or require a
successful compiler exit.

An ordinary browser page cannot execute local processes. The generic runner
therefore belongs to the optional local Node host/backend, not the browser UI
itself. The host can use the platform shell (`$SHELL -lc` on the initial Unix
target), stream stdout and stderr to separate UI panes, retain the exit status,
and allow either captured stream or a subsequently imported file to become the
dump document. If the user redirects output in the command, such as with Bash
`&>`, they can import the resulting file.

This input deliberately permits arbitrary shell execution, so it must require
an explicit Run action and must never be exposed through an unauthenticated
network listener. Bind the local host to loopback and use a per-launch token if
the browser communicates with it over HTTP. Display the exact command and
working directory with each captured run as provenance.

## 5. Decide how much IR awareness the diff needs

**Blocked by:** 3

**Type:** Research

**Question:** Is a raw line/word diff sufficient, or do SSA renumbering and
block movement make meaningful changes too noisy?

**Answer:** Ship raw textual diff first. Then test an optional normalized view
that can canonicalize mechanically renamed values without replacing the exact
view. Add lightweight Shermes IR syntax highlighting through a custom Monaco
tokenizer only after navigation and diffing work. Structural/difftastic-style
IR comparison requires a real grammar and is outside the first version.

## 6. Evaluate editor adapters

**Blocked by:** 2, 3

**Type:** Discuss

**Question:** Does the validated workflow benefit enough from living inside an
editor to justify an adapter?

**Answer:** Revisit after the standalone UI is useful. A Neovim adapter should
call the CLI, present function/pass pickers, and put two extracted versions in
scratch diff buffers; it should not duplicate parsing. A VS Code extension may
reuse the TypeScript core and Monaco UI. Keep both optional rather than making
either editor the owner of the data model.

## 7. Choose packaging after measuring the prototype

**Blocked by:** 3, 4

**Type:** Discuss

**Question:** Is a static browser app sufficient, or is a local CLI/server
needed for compiler invocation and large-file access?

**Answer:** Use Vite for development and browser file import initially. Once
compiler invocation is added, package a small Node CLI/local server around the
same core. Consider a desktop wrapper only if browser security or distribution
becomes a demonstrated problem.

## Proposed delivery order

1. Parser fixtures and `DumpIndex` CLI.
2. Read-only web viewer with function history and two-snapshot diff.
3. Removal/unreachable/change navigation.
4. Shermes invocation and diagnostics panel.
5. Optional IR highlighting and normalized diff experiments.
6. Neovim or VS Code adapter based on actual usage.
