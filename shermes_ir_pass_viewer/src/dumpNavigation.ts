import type {
  DumpIndex,
  FunctionVersion,
  InliningEvent,
  Snapshot,
  TraceSegment,
} from "../../parser_src/dump_parser";

export type ComparisonSide = "before" | "after";
export type Selection = { functionId: string; snapshotId: string };
export type LifecycleStatus =
  | "present"
  | "introduced"
  | "changed"
  | "unchanged"
  | "removed"
  | "unknown"
  | "unavailable";
export type TimelineEntry = {
  snapshot: Snapshot;
  version?: FunctionVersion;
  status: LifecycleStatus;
  unreachable: boolean;
  afterRemovalBoundary: boolean;
  inliningEvents: InliningEvent[];
  terminalInliningDestinations: InliningDestination[];
};
export type InliningDestination = {
  internalName: string;
  functionId?: string;
  callsiteCount: number;
};
// Location of a function removal
export type RemovalBoundary = {
  traceOrdinal: number;
  snapshotOrdinal: number;
  snapshotId: string;
};

export type DumpNavigationCache = {
  functionVersionByCompositeId: Map<string, FunctionVersion>;
  functionVersionsBySnapshotId: Map<string, Map<string, FunctionVersion>>;
  functionVersionsByFunctionId: Map<string, FunctionVersion[]>;
  snapshotIdToTrace: Map<string, TraceSegment>;
  snapshotIdToPosition: Map<string, number>;
  removedBeforeFunctionAndTrace: Set<string>;
  firstProvenRemovalByFunctionId: Map<string, RemovalBoundary>;
  functionsReappearingAfterRemoval: Set<string>;
  inliningEventsByCalleeAndAfterSnapshot: Map<string, InliningEvent[]>;
  inliningEventsByCalleeFunctionId: Map<string, InliningEvent[]>;
};

export type NavigationPolicy = {
  stopAfterRemovalBoundary: boolean;
};

const defaultNavigationPolicy: NavigationPolicy = {
  stopAfterRemovalBoundary: false,
};

function compositeId(functionId: string, snapshotId: string): string {
  return `${functionId}\0${snapshotId}`;
}

export function createDumpNavigationCache(
  index: DumpIndex,
): DumpNavigationCache {
  const cache: DumpNavigationCache = {
    functionVersionByCompositeId: new Map(),
    functionVersionsBySnapshotId: new Map(),
    functionVersionsByFunctionId: new Map(),
    snapshotIdToTrace: new Map(),
    snapshotIdToPosition: new Map(),
    removedBeforeFunctionAndTrace: new Set(),
    firstProvenRemovalByFunctionId: new Map(),
    functionsReappearingAfterRemoval: new Set(),
    inliningEventsByCalleeAndAfterSnapshot: new Map(),
    inliningEventsByCalleeFunctionId: new Map(),
  };

  for (const version of index.functionVersions) {
    cache.functionVersionByCompositeId.set(
      compositeId(version.functionId, version.snapshotId),
      version,
    );
    let versionsInSnapshot = cache.functionVersionsBySnapshotId.get(
      version.snapshotId,
    );
    if (!versionsInSnapshot) {
      versionsInSnapshot = new Map();
      cache.functionVersionsBySnapshotId.set(
        version.snapshotId,
        versionsInSnapshot,
      );
    }
    versionsInSnapshot.set(version.functionId, version);

    let versionsForFunction = cache.functionVersionsByFunctionId.get(
      version.functionId,
    );
    if (!versionsForFunction) {
      versionsForFunction = [];
      cache.functionVersionsByFunctionId.set(
        version.functionId,
        versionsForFunction,
      );
    }
    versionsForFunction.push(version);
  }

  for (const trace of index.traceSegments) {
    for (const [snapshotPosition, snapshot] of trace.snapshots.entries()) {
      cache.snapshotIdToTrace.set(snapshot.id, trace);
      cache.snapshotIdToPosition.set(snapshot.id, snapshotPosition);
    }
  }
  for (const event of index.inliningEvents ?? []) {
    const functionId = event.callee.functionId;
    if (!functionId) continue;
    const key = compositeId(functionId, event.afterSnapshotId);
    const events = cache.inliningEventsByCalleeAndAfterSnapshot.get(key);
    if (events) events.push(event);
    else cache.inliningEventsByCalleeAndAfterSnapshot.set(key, [event]);

    const eventsForCallee = cache.inliningEventsByCalleeFunctionId.get(
      functionId,
    );
    if (eventsForCallee) eventsForCallee.push(event);
    else cache.inliningEventsByCalleeFunctionId.set(functionId, [event]);
  }
  indexFunctionLifecycle(index, cache);
  return cache;
}
export function isAfterRemovalBoundary(
  functionId: string,
  snapshotId: string,
  cache: DumpNavigationCache,
): boolean {
  if (cache.functionsReappearingAfterRemoval.has(functionId)) return false;
  const boundary = cache.firstProvenRemovalByFunctionId.get(functionId);
  if (!boundary) return false;
  return snapshotIsAfterBoundary(snapshotId, boundary, cache);
}

function snapshotIsAfterBoundary(
  snapshotId: string,
  boundary: RemovalBoundary,
  cache: DumpNavigationCache,
): boolean {
  const currentTrace = cache.snapshotIdToTrace.get(snapshotId);
  if (!currentTrace) return false;
  if (currentTrace.ordinal !== boundary.traceOrdinal) {
    return currentTrace.ordinal > boundary.traceOrdinal;
  }
  const currentPosition = cache.snapshotIdToPosition.get(snapshotId);
  const boundaryPosition = cache.snapshotIdToPosition.get(boundary.snapshotId);
  return (
    currentPosition !== undefined &&
    boundaryPosition !== undefined &&
    currentPosition > boundaryPosition
  );
}

function selectionAllowedByPolicy(
  selection: Selection,
  cache: DumpNavigationCache,
  policy: NavigationPolicy,
): boolean {
  return (
    !policy.stopAfterRemovalBoundary ||
    !isAfterRemovalBoundary(
      selection.functionId,
      selection.snapshotId,
      cache,
    )
  );
}

function indexFunctionLifecycle(
  index: DumpIndex,
  cache: DumpNavigationCache,
): void {
  const removedFunctions = new Set<string>();
  for (const trace of index.traceSegments) {
    for (const functionId of removedFunctions) {
      cache.removedBeforeFunctionAndTrace.add(
        compositeId(functionId, trace.id),
      );
    }
    if (trace.scope.kind !== "module") continue;

    const seenInTrace = new Set<string>();
    let seenInPreviousSnapshot: Set<string> | undefined;

    for (const snapshot of trace.snapshots) {
      const functionsInCurrentSnapshot = new Set(
        cache.functionVersionsBySnapshotId.get(snapshot.id)?.keys() ?? [],
      );

      for (const functionId of functionsInCurrentSnapshot) {
        seenInTrace.add(functionId);
        const boundary = cache.firstProvenRemovalByFunctionId.get(functionId);
        if (
          boundary &&
          snapshotIsAfterBoundary(snapshot.id, boundary, cache)
        ) {
          cache.functionsReappearingAfterRemoval.add(functionId);
        }
      }

      if (seenInPreviousSnapshot) {
        for (const functionId of seenInPreviousSnapshot) {
          if (
            !functionsInCurrentSnapshot.has(functionId) &&
            !cache.firstProvenRemovalByFunctionId.has(functionId)
          ) {
            cache.firstProvenRemovalByFunctionId.set(functionId, {
              traceOrdinal: trace.ordinal,
              snapshotOrdinal: snapshot.ordinal,
              snapshotId: snapshot.id,
            });
          }
        }
      }

      seenInPreviousSnapshot = functionsInCurrentSnapshot;
    }
    const finalSnapshot = trace.snapshots.at(-1);
    const presentAtEnd = finalSnapshot
      ? cache.functionVersionsBySnapshotId.get(finalSnapshot.id)
      : undefined;
    for (const functionId of seenInTrace) {
      if (presentAtEnd?.has(functionId)) removedFunctions.delete(functionId);
      else removedFunctions.add(functionId);
    }
  }
}

export function snapshotLabel(snapshot: Snapshot): string {
  if (snapshot.kind === "initial" || !snapshot.pass) return "Initial state";
  const repeated =
    snapshot.pass.occurrence > 0 ? ` (${snapshot.pass.occurrence + 1})` : "";
  return `${snapshot.pass.name}${repeated}`;
}

export function traceLabel(trace: TraceSegment): string {
  if (trace.scope.kind === "module")
    return `Trace ${trace.ordinal + 1} · module`;
  if (trace.scope.kind === "function")
    return `Trace ${trace.ordinal + 1} · function`;
  return `Trace ${trace.ordinal + 1}`;
}

export function timelineFor(
  trace: TraceSegment,
  functionId: string,
  cache: DumpNavigationCache,
): TimelineEntry[] {
  const previouslyRemovedBeforeTrace = cache.removedBeforeFunctionAndTrace.has(
    compositeId(functionId, trace.id),
  );
  let previouslyPresent = false;
  let previouslyRemoved = previouslyRemovedBeforeTrace;
  const timeline = trace.snapshots.map((snapshot, snapshotIndex) => {
    const version = cache.functionVersionsBySnapshotId
      .get(snapshot.id)
      ?.get(functionId);
    const previousSnapshot = trace.snapshots[snapshotIndex - 1];
    const previousVersion = previousSnapshot
      ? cache.functionVersionsBySnapshotId
          .get(previousSnapshot.id)
          ?.get(functionId)
      : undefined;

    let status: LifecycleStatus;
    //if (version?.unreachable) {
    //  status = "unreachable";
    //} else if (version && previousVersion) {
    if (version && previousVersion) {
      status =
        version.contentSha256 === previousVersion.contentSha256
          ? "unchanged"
          : "changed";
    } else if (version) {
      if (
        trace.scope.kind === "module" &&
        snapshotIndex > 0 &&
        (previouslyRemoved || previouslyPresent)
      ) {
        status = "unknown";
      } else if (trace.scope.kind === "module" && snapshotIndex > 0) {
        status = "introduced";
      } else {
        status = "present";
      }
    } else if (
      trace.scope.kind === "module" &&
      (previouslyPresent || previouslyRemoved)
    ) {
      status = "removed";
    } else {
      status = "unavailable";
    }
    if (version) {
      previouslyPresent = true;
      previouslyRemoved = false;
    } else if (status === "removed") {
      previouslyPresent = false;
      previouslyRemoved = true;
    }
    const inliningEvents =
      cache.inliningEventsByCalleeAndAfterSnapshot.get(
        compositeId(functionId, snapshot.id),
      ) ?? [];
    return {
      snapshot,
      version,
      status,
      unreachable: version?.unreachable ?? false,
      afterRemovalBoundary: isAfterRemovalBoundary(
        functionId,
        snapshot.id,
        cache,
      ),
      inliningEvents,
      terminalInliningDestinations: terminalInliningDestinations(
        inliningEvents,
        cache,
      ),
    };
  });
  return timeline;
}

function terminalInliningDestinations(
  rootEvents: readonly InliningEvent[],
  cache: DumpNavigationCache,
): InliningDestination[] {
  const terminals = new Map<
    string,
    { internalName: string; functionId?: string; callsiteCount: number }
  >();

  const addTerminal = (
    internalName: string,
    functionId: string | undefined,
  ): void => {
    const key = functionId ?? `name:${internalName}`;
    const current = terminals.get(key);
    if (current) current.callsiteCount += 1;
    else terminals.set(key, { internalName, functionId, callsiteCount: 1 });
  };

  const follow = (
    internalName: string,
    functionId: string | undefined,
    afterOrdinal: number,
  ): void => {
    if (!functionId) {
      addTerminal(internalName, undefined);
      return;
    }
    const laterEvents = (
      cache.inliningEventsByCalleeFunctionId.get(functionId) ?? []
    ).filter((event) => event.ordinal > afterOrdinal);
    if (laterEvents.length === 0) {
      addTerminal(internalName, functionId);
      return;
    }
    for (const event of laterEvents) {
      follow(
        event.caller.internalName,
        event.caller.functionId,
        event.ordinal,
      );
    }
  };

  for (const event of rootEvents) {
    follow(
      event.caller.internalName,
      event.caller.functionId,
      event.ordinal,
    );
  }
  return [...terminals.values()];
}

export function findTraceForSnapshot(
  snapshotId: string,
  cache: DumpNavigationCache,
): TraceSegment | undefined {
  return cache.snapshotIdToTrace.get(snapshotId);
}

export function getTimelineEntry(
  selection: Selection,
  cache: DumpNavigationCache,
): TimelineEntry | undefined {
  const trace = cache.snapshotIdToTrace.get(selection.snapshotId);
  const position = cache.snapshotIdToPosition.get(selection.snapshotId);
  return trace && position !== undefined
    ? timelineFor(trace, selection.functionId, cache)[position]
    : undefined;
}

export function functionText(
  index: DumpIndex,
  entry: TimelineEntry | undefined,
): string {
  if (!entry?.version) return "";
  return index.dump.text.slice(
    entry.version.dumpRange.start,
    entry.version.dumpRange.end,
  );
}

export function defaultSelections(
  index: DumpIndex,
  cache: DumpNavigationCache,
): { before: Selection; after: Selection } | undefined {
  const firstFunction = index.functions[0];
  if (!firstFunction) return undefined;
  const versions =
    cache.functionVersionsByFunctionId.get(firstFunction.id) ?? [];
  const firstSnapshotId =
    versions[0]?.snapshotId ?? index.traceSegments[0]?.snapshots[0]?.id;
  const lastSnapshotId = versions.at(-1)?.snapshotId ?? firstSnapshotId;
  if (!firstSnapshotId || !lastSnapshotId) return undefined;
  return {
    before: { functionId: firstFunction.id, snapshotId: firstSnapshotId },
    after: { functionId: firstFunction.id, snapshotId: lastSnapshotId },
  };
}

export function snapshotForFunctionChange(
  functionId: string,
  side: ComparisonSide,
  cache: DumpNavigationCache,
): string | undefined {
  const versions = cache.functionVersionsByFunctionId.get(functionId) ?? [];
  return side === "before"
    ? versions[0]?.snapshotId
    : versions.at(-1)?.snapshotId;
}

export function advanceSelectionsTogether(
  before: Selection,
  after: Selection,
  cache: DumpNavigationCache,
  policy: NavigationPolicy = defaultNavigationPolicy,
): { before: Selection; after: Selection } | undefined {
  const beforeTrace = cache.snapshotIdToTrace.get(before.snapshotId);
  const afterTrace = cache.snapshotIdToTrace.get(after.snapshotId);
  if (!beforeTrace || beforeTrace.id !== afterTrace?.id) return undefined;
  const beforePosition = cache.snapshotIdToPosition.get(before.snapshotId);
  const afterPosition = cache.snapshotIdToPosition.get(after.snapshotId);
  if (beforePosition === undefined || afterPosition === undefined)
    return undefined;
  const nextBefore = beforeTrace.snapshots[beforePosition + 1];
  const nextAfter = beforeTrace.snapshots[afterPosition + 1];
  if (!nextBefore || !nextAfter) return undefined;
  const result = {
    before: { ...before, snapshotId: nextBefore.id },
    after: { ...after, snapshotId: nextAfter.id },
  };
  return selectionAllowedByPolicy(result.before, cache, policy) &&
    selectionAllowedByPolicy(result.after, cache, policy)
    ? result
    : undefined;
}
export function moveSelectionsBackwardsTogether(
  before: Selection,
  after: Selection,
  cache: DumpNavigationCache,
): { before: Selection; after: Selection } | undefined {
  const beforeTrace = cache.snapshotIdToTrace.get(before.snapshotId);
  const afterTrace = cache.snapshotIdToTrace.get(after.snapshotId);
  if (!beforeTrace || beforeTrace.id !== afterTrace?.id) return undefined;
  const beforePosition = cache.snapshotIdToPosition.get(before.snapshotId);
  const afterPosition = cache.snapshotIdToPosition.get(after.snapshotId);
  if (beforePosition === undefined || afterPosition === undefined)
    return undefined;
  const nextBefore = beforeTrace.snapshots[beforePosition - 1];
  const nextAfter = beforeTrace.snapshots[afterPosition - 1];
  if (!nextBefore || !nextAfter) return undefined;
  return {
    before: { ...before, snapshotId: nextBefore.id },
    after: { ...after, snapshotId: nextAfter.id },
  };
}

export function advanceSelectionsToNextDifference(
  before: Selection,
  after: Selection,
  cache: DumpNavigationCache,
  policy: NavigationPolicy = defaultNavigationPolicy,
): { before: Selection; after: Selection } | undefined {
  const trace = cache.snapshotIdToTrace.get(before.snapshotId);
  const afterTrace = cache.snapshotIdToTrace.get(after.snapshotId);

  if (!trace || trace.id !== afterTrace?.id) return undefined;
  const beforePosition = cache.snapshotIdToPosition.get(before.snapshotId);
  const afterPosition = cache.snapshotIdToPosition.get(after.snapshotId);
  if (beforePosition === undefined || afterPosition === undefined)
    return undefined;

  for (let offset = 1; ; offset += 1) {
    const nextBefore = trace.snapshots[beforePosition + offset];
    const nextAfter = trace.snapshots[afterPosition + offset];
    if (!nextBefore || !nextAfter) return undefined;
    const nextBeforeSelection = { ...before, snapshotId: nextBefore.id };
    const nextAfterSelection = { ...after, snapshotId: nextAfter.id };
    if (
      !selectionAllowedByPolicy(nextBeforeSelection, cache, policy) ||
      !selectionAllowedByPolicy(nextAfterSelection, cache, policy)
    ) {
      return undefined;
    }
    const beforeVersion = cache.functionVersionByCompositeId.get(
      compositeId(before.functionId, nextBefore.id),
    );

    const afterVersion = cache.functionVersionByCompositeId.get(
      compositeId(after.functionId, nextAfter.id),
    );
    if (
      beforeVersion?.contentSha256 !== afterVersion?.contentSha256 ||
      Boolean(beforeVersion) !== Boolean(afterVersion)
    ) {
      return {
        before: nextBeforeSelection,
        after: nextAfterSelection,
      };
    }
  }
}
export function moveSelectionsToPreviousDifference(
  before: Selection,
  after: Selection,
  cache: DumpNavigationCache,
): { before: Selection; after: Selection } | undefined {
  const trace = cache.snapshotIdToTrace.get(before.snapshotId);
  const afterTrace = cache.snapshotIdToTrace.get(after.snapshotId);
  if (!trace || trace.id !== afterTrace?.id) return undefined;
  const beforePosition = cache.snapshotIdToPosition.get(before.snapshotId);
  const afterPosition = cache.snapshotIdToPosition.get(after.snapshotId);
  if (beforePosition === undefined || afterPosition === undefined)
    return undefined;

  for (let offset = -1; ; offset -= 1) {
    const previousBefore = trace.snapshots[beforePosition + offset];
    const previousAfter = trace.snapshots[afterPosition + offset];
    if (!previousBefore || !previousAfter) return undefined;
    const beforeVersion = cache.functionVersionByCompositeId.get(
      compositeId(before.functionId, previousBefore.id),
    );
    const afterVersion = cache.functionVersionByCompositeId.get(
      compositeId(after.functionId, previousAfter.id),
    );
    if (
      beforeVersion?.contentSha256 !== afterVersion?.contentSha256 ||
      Boolean(beforeVersion) !== Boolean(afterVersion)
    ) {
      return {
        before: { ...before, snapshotId: previousBefore.id },
        after: { ...after, snapshotId: previousAfter.id },
      };
    }
  }
}
