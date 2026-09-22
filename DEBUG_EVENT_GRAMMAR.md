# Shermes optimizer debug-event grammar

Status: Initial Inlining grammar
Observed Shermes source commit: `d79485250541b7fb637e061bee9f0de739c8b1fc`
Observed: 2026-09-22

## Scope

This note records the first machine-recognized subset of output enabled by
Shermes/LLVM debug logging. It currently covers successful function-inlining
events emitted by `hermes/lib/Optimizer/Scalar/Inlining.cpp`. Other Inlining
diagnostics and other scalar passes remain unclassified text.

`LLVM_DEBUG` code is compiled out when assertions are disabled (`NDEBUG`). In
an assertions-enabled build, `-debug` enables all debug types and
`-debug-only=inline` selects the `DEBUG_TYPE` used by `Inlining.cpp`. The lines
are written through `llvh::dbgs()`, alongside the pass dumps on stderr.

## Successful inlining record

The observed line is:

```text
Inlining function '<callee-internal-name>' <callee-source-coordinate> into function '<caller-internal-name>' <caller-source-coordinate>
```

For example:

```text
Inlining function 'main' input.ts:19:1 into function ' 1#' input.ts:1:1
```

`SourceErrorManager::dumpCoords` normally prints a source URL followed by a
one-based line and column (`<url>:<line>:<column>`). An invalid coordinate is
currently printed as `none:0,0`. The index preserves each coordinate as raw
text because source URLs and function names are not escaped for this debug
format.

The line records one successful callsite inlining. It does not print the call
instruction identity. Multiple equal-looking records MUST therefore remain
distinct ordered events.

## Snapshot ownership

The optimizer writes these records after the preceding IR snapshot and before
the corresponding `*** AFTER Inlining` heading. An event belongs to the
transition:

```text
beforeSnapshotId = snapshot current when the line was observed
afterSnapshotId  = immediately following AFTER Inlining snapshot
```

The callee input is read from the Before state and the caller result is visible
in the After state. Repeated Inlining passes are distinguished by these
snapshot identities and event ordinals, not by the pass name.

The event means “callee was inlined into caller.” It does not mean that the
callee was moved, merged, or removed. One callee can be inlined at multiple
callsites and can remain in the module until a later dead-code pass.

Terminal provenance is derived by following outgoing events in strictly
increasing event-ordinal order. This ordering restriction is required: an
intermediate caller inlined somewhere before the source function entered it
does not carry the source function's body. Later events may be followed across
subsequent Inlining passes in the same dump. Multiple paths to one terminal
function are grouped while retaining their path/callsite count.

## Other observed Inlining output

The pass also emits human-oriented lines including:

```text
Visiting function '<name>'
Heuristic: do inline function '<name>': ...
Heuristic: not inlining function '<name>': ...
Cannot inline function '<name>': ...
```

These are not successful-inlining records and are intentionally left as raw,
unclassified dump text in the initial implementation. In particular, a
positive heuristic line does not prove that any callsite was actually inlined.

## Stability boundary

This grammar describes `LLVM_DEBUG` prose rather than a supported serialized
Shermes interface. The parser MUST preserve the raw range for every recognized
event and MUST continue parsing snapshots when a debug line is unrecognized.
Function resolution uses the printed internal name when it uniquely matches a
`FunctionIdentity`; unresolved names remain valid events.
