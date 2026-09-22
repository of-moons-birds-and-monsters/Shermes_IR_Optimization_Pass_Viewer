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

Do not infer a new removal merely by flattening all trace segments into one
sequence. A function absent from another function's trace is merely
unavailable. Module pass managers do run sequentially over the same module,
however, so a removal already established in one module-scoped trace remains
known in every later trace until the function is observed again. This includes
function-scoped and unknown-scoped traces: absence there cannot establish a new
removal, but it does not invalidate a removal already proven by a module trace.
Under the current dumping behavior, a stable function identity should not have
a present/absent/present gap within one trace. If a fixture violates that
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
therefore belongs to a later native/local host, not the initial browser UI. A
Tauri host can use the platform shell (`$SHELL -lc` on the initial Unix target),
stream stdout and stderr to separate UI panes, retain the exit status, and
allow either captured stream or a subsequently imported file to become the dump
document. If the user redirects output in the command, such as with Bash `&>`,
they can import the resulting file.

This input deliberately permits arbitrary shell execution, so it must require
an explicit Run action. If any future implementation exposes execution through
a local HTTP service instead of Tauri IPC, it must bind to loopback and require
a per-launch token. Display the exact command and working directory with each
captured run as provenance.

## 5. Decide how much IR awareness the diff needs

**Blocked by:** 3

**Type:** Research

**Question:** What comparison and highlighting should the initial viewer use?

**Answer:** Use only an exact raw textual line/word diff initially. Do not
normalize SSA numbers, reorder blocks, or attempt a structural IR comparison
until real usage demonstrates a specific source of noise. The raw view remains
available permanently even if normalized modes are explored later.

Monaco's diff highlighting supplies the required change visualization
independently of IR syntax highlighting. Add syntax coloring later as a purely
visual layer that never changes the compared text. First try an existing LLVM
IR/TextMate-style grammar and judge its output against representative Shermes
IR. Neovim's `.ll` highlighting shows that a generic LLVM interpretation can
already be useful, but Monaco will not inherit Neovim's filename detection or
grammar automatically. If LLVM highlighting is misleading or awkward to
integrate, register a small Monaco tokenizer for stable lexical categories such
as strings, `%` identifiers, block labels, numbers, booleans, types, function
headers, and instruction names. Full Shermes grammar accuracy is not required
for this feature.

Structural/difftastic-style IR comparison remains outside the first version.

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

**Question:** What should host the initial UI, and where should desktop
packaging enter?

**Answer:** A browser application is sufficient for the initial viewer. Use
Vite for development, local file import, parsing, timelines, and Monaco diffs.
Do not require a local server or desktop runtime for the first version.

Tauri is the preferred later desktop direction once there is a useful browser
UI to wrap. It can provide native file access and the optional generic command
runner from step 4. Revisit packaging only after the browser workflow is
working; do not make Tauri a prerequisite for parser or UI development.

## 8. Prove cross-trace chronology and lifecycle carry-forward

**Blocked by:** Nothing

**Type:** Research

**Question:** Does global dump order guarantee that every later trace observes
the output module state left by every earlier trace, and under exactly which
trace scopes may a previously established removal be carried forward to
replace later `unavailable` states?

**Answer:** Resolved in [TRACE_CHRONOLOGY.md](TRACE_CHRONOLOGY.md). The current
Shermes driver and Static Hermes backend run their pass managers synchronously
and in order over the same module, and each pass manager emits its dumps inline.
No binary instrumentation is needed to establish chronology.

Chronology does not imply complete coverage. Only disappearance within a
module-scoped trace can establish a new removal. Once established, however,
that removal may be carried through every later trace in the same uninterrupted
dump, including function-scoped and unknown-scoped traces: this carries earlier
knowledge rather than inferring absence from partial coverage. End the carried
state if the identity is observed again and report an invariant warning.

## 9. Define the debug-event grammar and stability boundary

**Blocked by:** Nothing

**Type:** Research

**Question:** Which `-debug` output records are machine-recognizable enough to
index, and what build flags, output streams, pass boundaries, source locations,
and naming guarantees do they depend on?

**Answer:** The successful-Inlining subset is resolved and implemented in
[DEBUG_EVENT_GRAMMAR.md](DEBUG_EVENT_GRAMMAR.md). A successful event is the
`Inlining function '<callee>' ... into function '<caller>' ...` line emitted by
`Inlining.cpp`. It belongs to the transition from the snapshot current when the
line is emitted to the immediately following `AFTER Inlining` snapshot.
Visiting, heuristic, and rejection lines are not success events and remain raw
unclassified text.

The format is human-oriented `LLVM_DEBUG` prose: names and source coordinates
are not formally escaped and no call-instruction identity is printed. The
parser therefore preserves the exact range, retains equal-looking events by
ordinal, and makes function-ID resolution optional. The supplied typed-class
dump yields five events and no parser warnings. Surveying the remaining debug
families has moved to ticket 15; TypeInference remains intentionally excluded.

## 10. Model direct and transitive inlining provenance

**Blocked by:** 9

**Type:** Discuss

**Question:** What identity and event model can represent a callee being
inlined into a caller, including anonymous/internal wrapper functions such as
`" 1#"`, multiple callsites, repeated inlining, and transitive chains ending
in `global`?

**Answer:** Use ordered direct `InliningEvent` records, each containing the
trace, Before/After snapshot IDs, raw callee and caller internal names/source
coordinates, optional resolved function IDs, and the raw text range. One record
represents one reported callsite even if it is textually identical to another.
Inlining is not removal: the callee may remain and may have multiple outgoing
events.

Transitive provenance is a derived ordered graph, not another persisted event:
for example `main -> " 1#" -> "" -> global` follows direct events from the same
pass transition in emission order. This graph describes copied provenance and
must not claim exclusive movement of body text. Without `-debug`, later work
may attempt conservative snapshot comparison, but it must be labeled inferred
and must not replace explicit events when they exist.

## 11. Decide which non-inlining debug events become product features

**Blocked by:** 15

**Type:** Discuss

**Question:** Which debug-event families justify persistent index records and
UI navigation rather than remaining searchable raw diagnostics?

**Answer:** Open. Rank each family by debugging value, parse reliability,
identity resolution, and UI cost. Do not add one generic “optimizer event”
abstraction until the concrete event families show which fields they actually
share.

## 12. Place compiler debug events in the interchange schema

**Blocked by:** 8, 10, 11

**Type:** Discuss

**Question:** Should debug output become structured `DumpIndex` data, a
separate optional companion index, or remain ranges into the embedded dump;
and does the chosen representation require a new schema version?

**Answer:** Open. Preserve raw text and ranges even for recognized events.
Keep parsing UI-independent, make absence of `-debug` output normal, and avoid
making human-oriented LLVM debug prose mandatory for opening ordinary dumps.

## 13. Prototype provenance navigation and presentation

**Blocked by:** 10, 12

**Type:** Prototype

**Question:** How should the viewer show that `main` was inlined through
internal wrappers into `global`, and how should a user navigate between the
callee immediately before inlining and each destination immediately after it?

**Answer:** Open. Exercise the design first on
`typedClass_modifiedByUntypedCode_dump.ll`. The UI must show direct and
transitive paths without claiming that textual movement is exclusive or that
the original function was removed by the inlining event itself.

Initial presentation is implemented: the status banner for a callee's
`AFTER Inlining` timeline entry follows later direct events in ordinal order
and lists the resulting terminal destinations. Thus
`main -> " 1#" -> "" -> global` displays `global`, rather than the temporary
direct destination `" 1#"`. Repeated paths to the same terminal destination
are grouped by callsite count. Branching timeline visualization, destination
navigation, full path display, and optional follow-on-advance behavior remain
open parts of this ticket.

## 14. Specify lifecycle filtering after proven removal

**Blocked by:** 8

**Type:** Discuss

**Question:** When may the “hide removed snapshots” option also hide later
`unavailable` entries based on a removal established in an earlier trace, and
how is that inferred state explained or reversed if the function reappears?

**Answer:** Resolved and implemented. `Hide Removed Snapshots` establishes a
per-function boundary only when consecutive snapshots in a module-scoped trace
prove removal. The boundary snapshot remains visible because it represents the
lifecycle change. Every strictly later snapshot is hidden for that function,
including entries whose local trace status remains `unavailable`; those entries
are hidden using carried lifecycle knowledge, not reclassified as new
removals.

The same optional policy governs forward navigation. Single-snapshot, linked
snapshot, next-difference, and next-element-change navigation may reach the
boundary but cannot advance beyond it. Backward navigation is unrestricted.
When the option is enabled while a selected side is already beyond the
boundary, that side is moved back to the boundary. Disabling the option restores
ordinary navigation without changing `DumpIndex`.

The removal boundary and the per-entry `afterRemovalBoundary` flag are derived
navigation-cache data, not persisted schema fields. If the identity later
reappears, the current implementation conservatively disables boundary
filtering for that function rather than hiding valid observations. Normative
element-navigation behavior is recorded in
[ELEMENT_NAVIGATION.md](ELEMENT_NAVIGATION.md), and the lifecycle basis is
recorded in [DUMP_INDEX_FORMAT.md](DUMP_INDEX_FORMAT.md) and
[TRACE_CHRONOLOGY.md](TRACE_CHRONOLOGY.md).

## 15. Survey remaining optimizer debug-event families

**Blocked by:** Nothing

**Type:** Research

**Question:** Which debug records from `SimpleStackPromotion`, `Mem2Reg`,
`FunctionAnalysis`, `Auditor`, `ResolveStaticRequire`, `DCE`, `SimpleMem2Reg`,
`FuncSigOpts`, and `LowerBuiltinCalls` are stable and valuable enough to index?

**Answer:** Open. Inventory every `LLVM_DEBUG` form, bind it to a pass
transition where possible, and distinguish successful transformations from
visiting, heuristic, rejection, and verifier prose. TypeInference is explicitly
out of scope until a concrete viewer use appears.

## Proposed delivery order

1. Parser fixtures and `DumpIndex` CLI.
2. Read-only web viewer with function history and two-snapshot diff.
3. Removal/unreachable/change navigation.
4. Primitive IR syntax highlighting, using an LLVM grammar if suitable.
5. Optional Tauri packaging and generic command runner.
6. Normalized diff experiments only in response to observed diff noise.
7. Neovim or VS Code adapter based on actual usage.
8. Source-backed trace chronology and debug-event survey.
9. Optional inlining-provenance index and navigation prototype.
10. Additional debug-event features only after the survey establishes value
    and stability.
