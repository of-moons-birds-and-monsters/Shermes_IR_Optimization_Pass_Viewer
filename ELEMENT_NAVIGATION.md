# Shermes IR Element Navigation Specification

Status: Draft  
Applies to: DumpIndex schema version 2

## 1. Purpose

This document specifies selection, comparison, navigation, and presentation
behavior for numbered Shermes IR instructions and basic blocks. It is
framework- and language-independent. `DUMP_INDEX_FORMAT.md` specifies persisted
facts; this document specifies behavior derived from those facts.

The key words **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT**, and **MAY**
describe normative requirements.

## 2. Element identity

```ts
type IrElementRef =
  | { kind: "instruction"; functionId: string; number: number }
  | { kind: "basic-block"; functionId: string; number: number };
```

Instruction and block numbers are unique only within a function. Consumers
MUST NOT match an element number across different `functionId` values.

Only instructions represented by `InstructionVersion` are selectable.
Unnumbered instructions remain part of basic-block content but have no
individually navigable identity.

## 3. Selection

Text input MUST accept exactly these case-sensitive forms:

```text
%72    numbered instruction 72
%BB11  basic block 11
```

Leading and trailing whitespace MAY be ignored. Other text is invalid. A
syntactically valid reference remains selected when absent from the current
snapshot, allowing navigation to additions and removals.
The numeric portion MUST be a non-negative safe integer in the consumer's
integer representation; a consumer using IEEE-754 numbers MUST reject values
greater than `Number.MAX_SAFE_INTEGER`.

In an editor, only exact `%<digits>` and `%BB<digits>` tokens are clickable.
Clicking any occurrence selects the referenced element, including operands and
branch targets. For example, clicking `%91` in this instruction selects
instruction 91, while clicking `%96` selects instruction 96:

```text
%96 = LoadStackInst (:any) %91: any
```

`%name`, `%this`, `%VS4`, and the `%VS4` portion of `[%VS4.variable]` are not
element references. Token recognition MUST prefer `%BB<digits>` over
`%<digits>` and require a token boundary.

Changing the selected function or trace MUST clear the element selection.

## 4. Comparison pair and anchors

An element change is always displayed as adjacent snapshots in one trace:

```text
Before = snapshot N
After  = snapshot N + 1
```

Forward navigation begins after the current After snapshot. Backward
navigation begins before the current Before snapshot. Selecting an element in
either editor establishes that editor's snapshot as the initial anchor for
both directions. This allows navigation when the comparison initially spans
the first and last snapshots. After an element change is applied, backward
navigation uses Before and forward navigation uses After.

Element navigation MUST remain within the selected trace. It MUST NOT infer an
adjacent transition across trace boundaries.

## 5. Change result

```ts
type ElementChange = {
  beforeSnapshotId: string;
  afterSnapshotId: string;
  beforeOccurrence?: IrElementOccurrence;
  afterOccurrence?: IrElementOccurrence;
  reasons: ElementChangeReason[];
};

type ElementChangeReason =
  | "added"
  | "removed"
  | "content-changed"
  | "moved-between-blocks"
  | "reordered-within-block"
  | "block-reordered";
```

`added` and `removed` are mutually exclusive with each other and with all
other reasons. Other reasons MAY coexist and MUST be returned in the order
shown by `ElementChangeReason` above.

## 6. Instruction changes

For an instruction present in both snapshots:

- unequal `contentSha256` adds `content-changed`;
- unequal `basicBlockNumber` adds `moved-between-blocks`;
- when the block is unchanged, a changed relative order among numbered
  instructions present in both snapshots adds `reordered-within-block`.

Instruction order is relative, not absolute. Insertions and removals before an
otherwise stationary instruction do not reorder that instruction. Relative
order changes when the target's ordering relationship with at least one other
numbered instruction present in both snapshots is reversed.

| Before | After | Reasons |
| --- | --- | --- |
| absent | present | `added` |
| present | absent | `removed` |
| `%1 = AddInst %2, %3` | `%1 = SubInst %2, %3` | `content-changed` |
| `%1` in `%BB0` | `%1` in `%BB2` | `moved-between-blocks` |
| `%1, %2` | `%2, %1` | `reordered-within-block` for both |
| `%1, %2` | `%9, %1, %2` | `%9` added; `%1` and `%2` unchanged |

If an instruction moves between blocks and also changes text, both reasons
MUST be reported. Reordering within the destination block is not additionally
reported for an instruction that moved between blocks.

## 7. Basic-block changes

A block's content is the exact ordered sequence represented by its
`contentSha256`. It includes numbered and unnumbered instruction lines and
excludes the `%BB<number>:` label, source-location comments, and line endings.

For a block present in both snapshots:

- unequal `contentSha256` adds `content-changed`;
- changed relative order among blocks present in both snapshots adds
  `block-reordered`.

Block order is relative, not absolute. Adding or removing another block before
the target does not reorder the target.

| Before | After | Reasons |
| --- | --- | --- |
| absent | present | `added` |
| present | absent | `removed` |
| same block with changed unnumbered `ReturnInst` | changed block | `content-changed` |
| `%BB0, %BB1` | `%BB1, %BB0` | `block-reordered` for both |
| `%BB0, %BB1` | `%BB9, %BB0, %BB1` | `%BB9` added; existing blocks not reordered |

Content and reorder reasons MAY coexist.

## 8. Availability and lifecycle

Element absence means `added` or `removed` only when the containing function is
available in both adjacent snapshots. If the function is unavailable, the
transition MUST be skipped rather than interpreted as an element lifecycle
change.

If a module-scoped trace establishes removal of the entire containing
function, its elements MAY be reported as removed together with the function.
An unknown- or function-scoped absence MUST NOT establish element removal.

## 9. Search behavior

```ts
findElementChange(
  target: IrElementRef,
  anchorSnapshotId: string,
  direction: "previous" | "next",
): ElementChange | undefined;
```

The search MUST examine adjacent snapshot pairs in the target's trace and
return the nearest pair in the requested direction with at least one change
reason. It returns `undefined` when no qualifying pair exists. A valid target
need not occur at the anchor snapshot.

Implementations SHOULD pre-index occurrences by function, element kind,
number, and snapshot. They MUST NOT repeatedly scan raw function text during UI
rendering.

## 10. Presentation

Applying a result MUST select its `beforeSnapshotId` and `afterSnapshotId` for
the same function. The selected element SHOULD be decorated wherever it exists.

- When present on both sides, each occurrence SHOULD be centered in its editor.
- When present on one side only, that occurrence SHOULD be centered and the
  diff editor's synchronized scrolling SHOULD position the missing side.
- Implementations SHOULD NOT invent a synthetic occurrence from neighboring
  elements when an element is absent.

The UI SHOULD display all returned change reasons. It SHOULD distinguish a
valid but absent target from invalid input and from a target never observed in
the selected function and trace.

## 11. Worked navigation example

```text
Snapshot 0: %1 exists in %BB0 as AddInst
Snapshot 1: %1 exists unchanged in %BB0
Snapshot 2: %1 changes to SubInst in %BB0
Snapshot 3: %1 moves unchanged to %BB2
Snapshot 4: %1 is absent
```

Starting with After at snapshot 0, successive forward searches return:

1. Before 1, After 2, `content-changed`.
2. Before 2, After 3, `moved-between-blocks`.
3. Before 3, After 4, `removed`.

Starting with Before at snapshot 4, successive backward searches return the
same pairs in reverse order. Each result still presents the chronologically
earlier snapshot as Before and the later snapshot as After.

## 12. Deferred behavior

The initial implementation does not navigate across traces, synthesize
identities for unnumbered instructions, or establish semantic equivalence
between newly allocated IR elements with different numbers.
