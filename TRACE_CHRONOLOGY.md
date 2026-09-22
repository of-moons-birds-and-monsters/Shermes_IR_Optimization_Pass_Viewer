# Shermes trace chronology

This note describes the current unmodified Shermes dump behavior inspected on
2026-09-22. It applies to one uninterrupted compiler invocation and should be
rechecked when the relevant compiler control flow changes.

## Result

Trace segments are emitted synchronously in execution order. Within one
Shermes invocation, a later segment observes the IR state left by earlier
segments. Instrumenting the executable is not necessary to establish that
property: it follows directly from the compiler's control flow and from every
dump being written inline, immediately before or after the corresponding pass.

Chronology and coverage are different facts. A module-scoped snapshot shows
the complete module at that point. A function-scoped snapshot shows only its
target function; another function's absence from it does not establish that
the other function was removed.

If a function's removal was already established by disappearance between two
snapshots of a module-scoped trace, that fact may be carried forward through
all later trace segments in the same dump. Later `unavailable` entries may be
presented as `previously removed` or omitted by an appropriately named filter.
This is inherited lifecycle knowledge, not a new removal inferred from the
later segment's incomplete coverage. If the same function identity is ever
observed again, the carried state must end and the viewer should also report a
warning because that contradicts the current identity/lifecycle invariant.

An ambiguous, single-function `scope.kind: "unknown"` trace cannot establish a
new removal. It also does not invalidate a removal already proven by an earlier
module-scoped trace.

## Source basis

- `PassManager::run(Module *)` prints `INITIAL STATE`, then synchronously runs
  each pass on the same `Module *`; `runPassOnModule` prints the entire same
  module immediately after each pass. Fixed-point loops call that same routine
  for every inner pass (`hermes/lib/Optimizer/PassManager/PassManager.cpp`).
- `PassManager::run(Function *)` prints and mutates the same `Function *`
  sequentially, but its snapshots cover only that function (the same file).
- The Shermes driver constructs one `Module M`, then passes that same module in
  order through native-backend optimization and the selected optimization
  pipeline (`hermes/tools/shermes/shermes.cpp`).
- Static Hermes lowering next passes that same module to the `SH Lower` module
  pass manager, then iterates its surviving functions and runs final
  function-level lowering on each (`hermes/lib/BCGen/SH/SH.cpp`).
- Dead-function deletion removes and destroys functions
  (`hermes/lib/Optimizer/Scalar/Utils.cpp`). The inspected optimizer and Static
  Hermes lowering paths contain no function-creation calls; IRBuilder function
  creation belongs to the earlier IR-generation stage.

## Optional validation instrumentation

Instrumentation is useful as a regression check, not as the primary proof. A
small local patch could add a monotonically increasing trace ordinal plus the
pass-manager name and explicit `module`/`function` scope to each `INITIAL
STATE` heading. Avoid using pointer values as serialized identities: they are
process-local implementation details. This patch would also remove the
viewer's current single-function scope ambiguity, but the viewer must continue
to support ordinary unmodified dumps.

