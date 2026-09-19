import type {
  DumpIndex,
  FunctionVersion,
  Snapshot,
  TraceSegment,
} from "../../src/dump_parser";

export type ComparisonSide = "before" | "after";

export type Selection = {
  functionId: string;
  snapshotId: string;
};

export type LifecycleStatus =
  | "present"
  | "introduced"
  | "changed"
  | "unchanged"
  | "unreachable"
  | "removed"
  | "unknown"
  | "unavailable";

export type TimelineEntry = {
  snapshot: Snapshot;
  version?: FunctionVersion;
  status: LifecycleStatus;
};

export function snapshotLabel(snapshot: Snapshot): string {
  if (snapshot.kind === "initial" || !snapshot.pass) {
    return "Initial state";
  }
  const pass = snapshot.pass;
  const repeated = pass.occurrence > 0
    ? ` (${pass.occurrence + 1})`
    : "";
  return `${pass.name}${repeated}`;
}

export function traceLabel(trace: TraceSegment): string {
  if (trace.scope.kind === "module") {
    return `Trace ${trace.ordinal + 1} · module`;
  }
  if (trace.scope.kind === "function") {
    return `Trace ${trace.ordinal + 1} · function`;
  }
  return `Trace ${trace.ordinal + 1}`;
}

export function timelineFor(
  index: DumpIndex,
  trace: TraceSegment,
  functionId: string,
): TimelineEntry[] {
  const versionBySnapshot = new Map(
    index.functionVersions
      .filter((version) => version.functionId === functionId)
      .map((version) => [version.snapshotId, version]),
  );
  const priorModuleState = moduleStateBeforeTrace(index, trace, functionId);
  let previouslyPresent = false;
  let previouslyRemoved = priorModuleState === "removed";

  return trace.snapshots.map((snapshot, snapshotIndex) => {
    const version = versionBySnapshot.get(snapshot.id);
    const previousSnapshot = trace.snapshots[snapshotIndex - 1];
    const previousVersion = previousSnapshot
      ? versionBySnapshot.get(previousSnapshot.id)
      : undefined;

    let status: LifecycleStatus;
    if (version?.unreachable) {
      status = "unreachable";
    } else if (version && previousVersion) {
      status = version.contentSha256 === previousVersion.contentSha256
        ? "unchanged"
        : "changed";
    } else if (version) {
      if (
        trace.scope.kind === "module"
        && snapshotIndex > 0
        && (previouslyRemoved || previouslyPresent)
      ) {
        status = "unknown";
      } else if (trace.scope.kind === "module" && snapshotIndex > 0) {
        status = "introduced";
      } else {
        status = "present";
      }
    } else if (trace.scope.kind === "module" && previouslyPresent) {
      status = "removed";
    } else if (trace.scope.kind === "module" && previouslyRemoved) {
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
    return { snapshot, version, status };
  });
}

function moduleStateBeforeTrace(
  index: DumpIndex,
  targetTrace: TraceSegment,
  functionId: string,
): "removed" | "unknown" {
  let state: "removed" | "unknown" = "unknown";
  const snapshotsWithFunction = new Set(
    index.functionVersions
      .filter((version) => version.functionId === functionId)
      .map((version) => version.snapshotId),
  );

  for (const trace of index.traceSegments) {
    if (trace.id === targetTrace.id) {
      break;
    }
    if (trace.scope.kind !== "module") {
      continue;
    }
    let presentInThisTrace = false;
    for (const snapshot of trace.snapshots) {
      if (snapshotsWithFunction.has(snapshot.id)) {
        presentInThisTrace = true;
        state = "unknown";
      } else if (presentInThisTrace) {
        state = "removed";
      }
    }
  }
  return state;
}

export function findTraceForSnapshot(
  index: DumpIndex,
  snapshotId: string,
): TraceSegment | undefined {
  return index.traceSegments.find((trace) =>
    trace.snapshots.some((snapshot) => snapshot.id === snapshotId),
  );
}

export function getTimelineEntry(
  index: DumpIndex,
  selection: Selection,
): TimelineEntry | undefined {
  const trace = findTraceForSnapshot(index, selection.snapshotId);
  return trace
    ? timelineFor(index, trace, selection.functionId).find(
        (entry) => entry.snapshot.id === selection.snapshotId,
      )
    : undefined;
}

export function functionText(
  index: DumpIndex,
  entry: TimelineEntry | undefined,
): string {
  if (!entry?.version) {
    return "";
  }
  const { start, end } = entry.version.dumpRange;
  return index.dump.text.slice(start, end);
}

export function defaultSelections(
  index: DumpIndex,
): { before: Selection; after: Selection } | undefined {
  const firstFunction = index.functions[0];
  if (!firstFunction) {
    return undefined;
  }
  const versions = index.functionVersions.filter(
    (version) => version.functionId === firstFunction.id,
  );
  const firstSnapshotId = versions[0]?.snapshotId
    ?? index.traceSegments[0]?.snapshots[0]?.id;
  const lastSnapshotId = versions.at(-1)?.snapshotId ?? firstSnapshotId;
  if (!firstSnapshotId || !lastSnapshotId) {
    return undefined;
  }
  return {
    before: { functionId: firstFunction.id, snapshotId: firstSnapshotId },
    after: { functionId: firstFunction.id, snapshotId: lastSnapshotId },
  };
}

export function snapshotForFunctionChange(
  index: DumpIndex,
  functionId: string,
  side: ComparisonSide,
): string | undefined {
  const versions = index.functionVersions.filter(
    (version) => version.functionId === functionId,
  );
  return side === "before"
    ? versions[0]?.snapshotId
    : versions.at(-1)?.snapshotId;
}

export function advanceSelectionsTogether(
  index: DumpIndex,
  before: Selection,
  after: Selection,
): { before: Selection; after: Selection } | undefined {
  const beforeTrace = findTraceForSnapshot(index, before.snapshotId);
  const afterTrace = findTraceForSnapshot(index, after.snapshotId);
  if (!beforeTrace || beforeTrace.id !== afterTrace?.id) {
    return undefined;
  }
  const beforePosition = beforeTrace.snapshots.findIndex(
    (snapshot) => snapshot.id === before.snapshotId,
  );
  const afterPosition = beforeTrace.snapshots.findIndex(
    (snapshot) => snapshot.id === after.snapshotId,
  );
  const nextBefore = beforeTrace.snapshots[beforePosition + 1];
  const nextAfter = beforeTrace.snapshots[afterPosition + 1];
  if (!nextBefore || !nextAfter) {
    return undefined;
  }
  return {
    before: { ...before, snapshotId: nextBefore.id },
    after: { ...after, snapshotId: nextAfter.id },
  };
}

export function advanceSelectionsToNextDifference(
  index: DumpIndex,
  before: Selection,
  after: Selection,
): { before: Selection; after: Selection } | undefined {
  const trace = findTraceForSnapshot(index, before.snapshotId);
  const afterTrace = findTraceForSnapshot(index, after.snapshotId);
  if (!trace || trace.id !== afterTrace?.id) {
    return undefined;
  }
  const beforePosition = trace.snapshots.findIndex(
    (snapshot) => snapshot.id === before.snapshotId,
  );
  const afterPosition = trace.snapshots.findIndex(
    (snapshot) => snapshot.id === after.snapshotId,
  );
  const versionByFunctionAndSnapshot = new Map(
    index.functionVersions
      .filter(
        (version) =>
          version.functionId === before.functionId
          || version.functionId === after.functionId,
      )
      .map((version) => [
        `${version.functionId}\0${version.snapshotId}`,
        version,
      ]),
  );

  for (let offset = 1; ; offset += 1) {
    const nextBefore = trace.snapshots[beforePosition + offset];
    const nextAfter = trace.snapshots[afterPosition + offset];
    if (!nextBefore || !nextAfter) {
      return undefined;
    }
    const beforeVersion = versionByFunctionAndSnapshot.get(
      `${before.functionId}\0${nextBefore.id}`,
    );
    const afterVersion = versionByFunctionAndSnapshot.get(
      `${after.functionId}\0${nextAfter.id}`,
    );
    if (
      beforeVersion?.contentSha256 !== afterVersion?.contentSha256
      || Boolean(beforeVersion) !== Boolean(afterVersion)
    ) {
      return {
        before: { ...before, snapshotId: nextBefore.id },
        after: { ...after, snapshotId: nextAfter.id },
      };
    }
  }
}
