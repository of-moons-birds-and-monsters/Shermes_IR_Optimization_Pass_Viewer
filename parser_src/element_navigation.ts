import type {
  BasicBlockVersion,
  DumpIndex,
  FunctionVersion,
  InstructionVersion,
  Snapshot,
  TraceSegment,
} from "./dump_parser.ts";

export type IrElementRef =
  | { kind: "instruction"; functionId: string; number: number }
  | { kind: "basic-block"; functionId: string; number: number };

export type IrElementOccurrence =
  | { kind: "instruction"; version: InstructionVersion }
  | { kind: "basic-block"; version: BasicBlockVersion };

export type ElementChangeReason =
  | "added"
  | "removed"
  | "content-changed"
  | "moved-between-blocks"
  | "reordered-within-block"
  | "block-reordered";

export type ElementChange = {
  beforeSnapshotId: string;
  afterSnapshotId: string;
  beforeOccurrence?: IrElementOccurrence;
  afterOccurrence?: IrElementOccurrence;
  reasons: ElementChangeReason[];
};

export type ElementNavigation = {
  findElementChange(
    target: IrElementRef,
    anchorSnapshotId: string,
    direction: "previous" | "next",
  ): ElementChange | undefined;
  findOccurrence(
    target: IrElementRef,
    snapshotId: string,
  ): IrElementOccurrence | undefined;
  hasElementInTrace(target: IrElementRef, traceId: string): boolean;
};

export function parseElementReference(
  text: string,
  functionId: string,
): IrElementRef | undefined {
  const match = /^%(BB)?(\d+)$/.exec(text.trim());
  if (!match) return undefined;
  const number = Number.parseInt(match[2], 10);
  if (!Number.isSafeInteger(number)) return undefined;
  return {
    kind: match[1] ? "basic-block" : "instruction",
    functionId,
    number,
  };
}

function key(functionId: string, number: number, snapshotId: string): string {
  return `${functionId}\0${number}\0${snapshotId}`;
}

function functionKey(functionId: string, snapshotId: string): string {
  return `${functionId}\0${snapshotId}`;
}

function traceElementKey(target: IrElementRef, traceId: string): string {
  return `${target.kind}\0${target.functionId}\0${target.number}\0${traceId}`;
}

export function createElementNavigation(index: DumpIndex): ElementNavigation {
  const instructionByKey = new Map<string, InstructionVersion>();
  const blockByKey = new Map<string, BasicBlockVersion>();
  const functionVersionByKey = new Map<string, FunctionVersion>();
  const traceBySnapshotId = new Map<string, TraceSegment>();
  const traceById = new Map<string, TraceSegment>();
  const positionBySnapshotId = new Map<string, number>();
  const instructionsByBlock = new Map<string, InstructionVersion[]>();
  const blocksByFunctionVersion = new Map<string, BasicBlockVersion[]>();
  const elementsObservedInTrace = new Set<string>();

  for (const version of index.functionVersions) {
    functionVersionByKey.set(
      functionKey(version.functionId, version.snapshotId),
      version,
    );
  }
  for (const block of index.basicBlockVersions) {
    blockByKey.set(key(block.functionId, block.number, block.snapshotId), block);
    const blocks = blocksByFunctionVersion.get(block.functionVersionId) ?? [];
    blocks.push(block);
    blocksByFunctionVersion.set(block.functionVersionId, blocks);
  }
  for (const instruction of index.instructionVersions) {
    instructionByKey.set(
      key(instruction.functionId, instruction.number, instruction.snapshotId),
      instruction,
    );
    const blockKey = `${instruction.functionVersionId}\0${instruction.basicBlockNumber}`;
    const instructions = instructionsByBlock.get(blockKey) ?? [];
    instructions.push(instruction);
    instructionsByBlock.set(blockKey, instructions);
  }
  for (const trace of index.traceSegments) {
    traceById.set(trace.id, trace);
    for (const [position, snapshot] of trace.snapshots.entries()) {
      traceBySnapshotId.set(snapshot.id, trace);
      positionBySnapshotId.set(snapshot.id, position);
    }
  }
  for (const instruction of index.instructionVersions) {
    const trace = traceBySnapshotId.get(instruction.snapshotId);
    if (trace) {
      elementsObservedInTrace.add(
        traceElementKey(
          {
            kind: "instruction",
            functionId: instruction.functionId,
            number: instruction.number,
          },
          trace.id,
        ),
      );
    }
  }
  for (const block of index.basicBlockVersions) {
    const trace = traceBySnapshotId.get(block.snapshotId);
    if (trace) {
      elementsObservedInTrace.add(
        traceElementKey(
          {
            kind: "basic-block",
            functionId: block.functionId,
            number: block.number,
          },
          trace.id,
        ),
      );
    }
  }

  const occurrence = (
    target: IrElementRef,
    snapshotId: string,
  ): IrElementOccurrence | undefined => {
    if (target.kind === "instruction") {
      const version = instructionByKey.get(
        key(target.functionId, target.number, snapshotId),
      );
      return version ? { kind: "instruction", version } : undefined;
    }
    const version = blockByKey.get(
      key(target.functionId, target.number, snapshotId),
    );
    return version ? { kind: "basic-block", version } : undefined;
  };

  const functionIsComparable = (
    target: IrElementRef,
    trace: TraceSegment,
    before: Snapshot,
    after: Snapshot,
  ): boolean => {
    const beforePresent = functionVersionByKey.has(
      functionKey(target.functionId, before.id),
    );
    const afterPresent = functionVersionByKey.has(
      functionKey(target.functionId, after.id),
    );
    return (
      (beforePresent && afterPresent) ||
      (trace.scope.kind === "module" && beforePresent !== afterPresent)
    );
  };

  const relativeOrderChanged = (
    targetNumber: number,
    beforeItems: ReadonlyArray<{ number: number; ordinal: number }>,
    afterItems: ReadonlyArray<{ number: number; ordinal: number }>,
  ): boolean => {
    const beforeOrdinal = new Map(beforeItems.map((item) => [item.number, item.ordinal]));
    const afterOrdinal = new Map(afterItems.map((item) => [item.number, item.ordinal]));
    const beforeTarget = beforeOrdinal.get(targetNumber);
    const afterTarget = afterOrdinal.get(targetNumber);
    if (beforeTarget === undefined || afterTarget === undefined) return false;
    for (const [number, beforeOther] of beforeOrdinal) {
      if (number === targetNumber) continue;
      const afterOther = afterOrdinal.get(number);
      if (afterOther === undefined) continue;
      if ((beforeOther < beforeTarget) !== (afterOther < afterTarget)) return true;
    }
    return false;
  };

  const compare = (
    target: IrElementRef,
    trace: TraceSegment,
    before: Snapshot,
    after: Snapshot,
  ): ElementChange | undefined => {
    if (!functionIsComparable(target, trace, before, after)) return undefined;
    const beforeOccurrence = occurrence(target, before.id);
    const afterOccurrence = occurrence(target, after.id);
    if (!beforeOccurrence && !afterOccurrence) return undefined;
    if (!beforeOccurrence) {
      return {
        beforeSnapshotId: before.id,
        afterSnapshotId: after.id,
        afterOccurrence,
        reasons: ["added"],
      };
    }
    if (!afterOccurrence) {
      return {
        beforeSnapshotId: before.id,
        afterSnapshotId: after.id,
        beforeOccurrence,
        reasons: ["removed"],
      };
    }

    const reasons: ElementChangeReason[] = [];
    if (
      beforeOccurrence.version.contentSha256 !==
      afterOccurrence.version.contentSha256
    ) {
      reasons.push("content-changed");
    }
    if (
      beforeOccurrence.kind === "instruction" &&
      afterOccurrence.kind === "instruction"
    ) {
      const beforeInstruction = beforeOccurrence.version;
      const afterInstruction = afterOccurrence.version;
      if (beforeInstruction.basicBlockNumber !== afterInstruction.basicBlockNumber) {
        reasons.push("moved-between-blocks");
      } else {
        const beforeItems = instructionsByBlock.get(
          `${beforeInstruction.functionVersionId}\0${beforeInstruction.basicBlockNumber}`,
        ) ?? [];
        const afterItems = instructionsByBlock.get(
          `${afterInstruction.functionVersionId}\0${afterInstruction.basicBlockNumber}`,
        ) ?? [];
        if (
          relativeOrderChanged(
            target.number,
            beforeItems.map((item) => ({ number: item.number, ordinal: item.ordinalInBlock })),
            afterItems.map((item) => ({ number: item.number, ordinal: item.ordinalInBlock })),
          )
        ) {
          reasons.push("reordered-within-block");
        }
      }
    } else if (
      beforeOccurrence.kind === "basic-block" &&
      afterOccurrence.kind === "basic-block"
    ) {
      const beforeBlocks = blocksByFunctionVersion.get(
        beforeOccurrence.version.functionVersionId,
      ) ?? [];
      const afterBlocks = blocksByFunctionVersion.get(
        afterOccurrence.version.functionVersionId,
      ) ?? [];
      if (relativeOrderChanged(target.number, beforeBlocks, afterBlocks)) {
        reasons.push("block-reordered");
      }
    }
    if (reasons.length === 0) return undefined;
    return {
      beforeSnapshotId: before.id,
      afterSnapshotId: after.id,
      beforeOccurrence,
      afterOccurrence,
      reasons,
    };
  };

  return {
    findOccurrence: occurrence,
    hasElementInTrace(target, traceId) {
      return traceById.has(traceId) && elementsObservedInTrace.has(
        traceElementKey(target, traceId),
      );
    },
    findElementChange(target, anchorSnapshotId, direction) {
      const trace = traceBySnapshotId.get(anchorSnapshotId);
      const anchorPosition = positionBySnapshotId.get(anchorSnapshotId);
      if (!trace || anchorPosition === undefined) return undefined;
      if (direction === "next") {
        for (let position = anchorPosition; position < trace.snapshots.length - 1; position += 1) {
          const result = compare(
            target,
            trace,
            trace.snapshots[position],
            trace.snapshots[position + 1],
          );
          if (result) return result;
        }
      } else {
        for (let position = anchorPosition; position > 0; position -= 1) {
          const result = compare(
            target,
            trace,
            trace.snapshots[position - 1],
            trace.snapshots[position],
          );
          if (result) return result;
        }
      }
      return undefined;
    },
  };
}
