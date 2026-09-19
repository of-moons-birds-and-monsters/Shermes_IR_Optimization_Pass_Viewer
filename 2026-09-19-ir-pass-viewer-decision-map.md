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

**Answer:** Define a versioned `DumpIndex` JSON schema containing stages,
ordered snapshots, function identities, versions or source ranges, body hashes,
and non-IR diagnostic chunks. Expose it through a TypeScript library and a CLI.
Start by embedding function text; measure representative large dumps before
adding lazy file ranges or deduplicated body storage.

## 3. Prototype the function-history UI

**Blocked by:** 1, 2

**Type:** Prototype

**Question:** Which controls make optimizer-caused changes and removals quickest
to locate?

**Answer:** Prototype one screen with:

- a searchable function list with present/removed status;
- selectors for snapshots A and B, grouped by pipeline stage;
- a function timeline marking changed, unchanged, unreachable, and absent;
- previous/next change navigation and an “only changed snapshots” toggle;
- Monaco inline and side-by-side diff modes;
- an explicit removal banner with an empty comparison model when one side is
  absent.

Validate the workflow on the typed-class inlining failure before adding visual
polish.

## 4. Separate compiler output from diagnostics

**Blocked by:** 1, 2

**Type:** Prototype

**Question:** After file import works, how should the tool invoke Shermes when
IR snapshots and compiler diagnostics share stderr?

**Answer:** Add a runner as a second milestone. Capture stdout and stderr,
recognize snapshot boundaries in stderr, preserve text outside parsed regions
as diagnostics, record the exact compiler path and arguments, and never require
successful code generation to inspect a partial dump. Avoid shell command
construction; spawn the compiler with an argument array.

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
