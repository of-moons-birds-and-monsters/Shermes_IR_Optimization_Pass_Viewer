import { useEffect, useMemo, useState } from "react";
import "./App.css";
import { IrDiffEditor } from "./Editor";
import {
  useFileDialog,
  type UseFileDialogOptions,
} from "./hooks/useFileDialog";
import {
  buildDumpIndex,
  type DumpIndex,
} from "../../src/dump_parser";
import {
  advanceSelectionsToNextDifference,
  advanceSelectionsTogether,
  createDumpNavigationCache,
  defaultSelections,
  findTraceForSnapshot,
  functionText,
  snapshotForFunctionChange,
  snapshotLabel,
  timelineFor,
  traceLabel,
  type ComparisonSide,
  type DumpNavigationCache,
  type Selection,
  type TimelineEntry,
} from "./dumpNavigation";

interface AppSettings {
  useFileDialog: UseFileDialogOptions;
}

const appSettings: AppSettings = {
  useFileDialog: { multiple: false, accept: ".txt,.log,.dump" },
};

type SideSelectorProps = {
  side: ComparisonSide;
  index: DumpIndex;
  selection: Selection;
  active: boolean;
  cache: DumpNavigationCache;
  timelinesByTraceId: Map<string, TimelineEntry[]>;
  onActivate: () => void;
  onChange: (selection: Selection) => void;
  matchOtherSide: () => void;
};

function SideSelector({
  side,
  index,
  selection,
  active,
  cache,
  timelinesByTraceId,
  onActivate,
  onChange,
  matchOtherSide,
}: SideSelectorProps) {
  const selectedTrace = cache.snapshotIdToTrace.get(selection.snapshotId);
  const selectedPosition = cache.snapshotIdToPosition.get(selection.snapshotId);
  const selectedEntry =
    selectedTrace && selectedPosition !== undefined
      ? timelinesByTraceId.get(selectedTrace.id)?.[selectedPosition]
      : undefined;

  const changeFunction = (functionId: string) => {
    const snapshotId = snapshotForFunctionChange(functionId, side, cache);
    if (snapshotId) {
      onChange({ functionId, snapshotId });
    }
  };

  return (
    <section
      className={`side-selector${active ? " side-selector--active" : ""}`}
      onFocus={onActivate}
      onClick={onActivate}
    >
      <header className="side-selector__heading">
        <h2>{side === "before" ? "Before" : "After"}</h2>
        <button onClick={() => matchOtherSide()}>
          Match {side === "before" ? "After" : "Before"}
        </button>
      </header>

      <div className="side-selector__content">
        <label>
          Function
          <select
            value={selection.functionId}
            onChange={(event) => changeFunction(event.target.value)}
          >
            {index.functions.map((identity) => (
              <option key={identity.id} value={identity.id}>
                {identity.internalName || "(anonymous)"}
              </option>
            ))}
          </select>
        </label>
        <label>
          Snapshot
          <select
            value={selection.snapshotId}
            onChange={(event) =>
              onChange({ ...selection, snapshotId: event.target.value })
            }
          >
            {index.traceSegments.map((trace) => (
              <optgroup key={trace.id} label={traceLabel(trace)}>
                {(timelinesByTraceId.get(trace.id) ?? []).map((entry) => (
                  <option key={entry.snapshot.id} value={entry.snapshot.id}>
                    {entry.snapshot.ordinal + 1}.{" "}
                    {snapshotLabel(entry.snapshot)} · {entry.status}
                  </option>
                ))}
              </optgroup>
            ))}
          </select>
        </label>
        {selectedEntry && (
          <div
            className={`status-banner status-banner--${selectedEntry.status}`}
          >
            {statusMessage(selectedEntry)}
          </div>
        )}
      </div>
    </section>
  );
}

function createFunctionTimelines(
  index: DumpIndex,
  functionId: string,
  cache: DumpNavigationCache,
): Map<string, TimelineEntry[]> {
  return new Map(
    index.traceSegments.map((trace) => [
      trace.id,
      timelineFor(trace, functionId, cache),
    ]),
  );
}

function statusMessage(entry: TimelineEntry): string {
  switch (entry.status) {
    case "unchanged":
      return "No change in this pass";
    case "introduced":
      return "Function introduced in this snapshot";
    case "removed":
      return "Function removed before this snapshot";
    case "unavailable":
      return "Function unavailable in this trace";
    case "unknown":
      return "Invalid lifecycle gap; see parser warnings";
    case "unreachable":
      return "Function is marked unreachable";
    case "changed":
      return "Function changed in this pass";
    case "present":
      return "Function present";
  }
}
function App() {
  const [files, open] = useFileDialog(appSettings.useFileDialog);
  const [loadedDump, setLoadedDump] = useState<{
    index: DumpIndex;
    cache: DumpNavigationCache;
  }>();
  const [before, setBefore] = useState<Selection>();
  const [after, setAfter] = useState<Selection>();
  const [activeSide, setActiveSide] = useState<ComparisonSide>("after");
  const [fileName, setFileName] = useState<string>();
  const [error, setError] = useState<string>();
  const [timelineCollapsed, setTimelineCollapsed] = useState(false);
  const [sideSelectorsCollapsed, setSideSelectorsCollapsed] = useState(false);

  useEffect(() => {
    const file = files?.[0];
    if (!file) {
      return;
    }

    let cancelled = false;
    file
      .bytes()
      .then(buildDumpIndex)
      .then((nextIndex) => {
        if (cancelled) return;
        const nextCache = createDumpNavigationCache(nextIndex);
        const selections = defaultSelections(nextIndex, nextCache);
        setError(undefined);
        setLoadedDump({ index: nextIndex, cache: nextCache });
        setBefore(selections?.before);
        setAfter(selections?.after);
        setFileName(file.name);
      })
      .catch((reason: unknown) => {
        if (!cancelled) {
          setError(reason instanceof Error ? reason.message : String(reason));
          setLoadedDump(undefined);
          setBefore(undefined);
          setAfter(undefined);
          setFileName(undefined);
        }
      });

    return () => {
      cancelled = true;
    };
  }, [files]);

  const index = loadedDump?.index;
  const cache = loadedDump?.cache;
  const beforeFunctionId = before?.functionId;
  const afterFunctionId = after?.functionId;

  const beforeTimelines = useMemo(
    () =>
      index && beforeFunctionId && cache
        ? createFunctionTimelines(index, beforeFunctionId, cache)
        : new Map<string, TimelineEntry[]>(),
    [index, beforeFunctionId, cache],
  );
  const afterTimelines = useMemo(
    () => {
      if (!index || !afterFunctionId || !cache) {
        return new Map<string, TimelineEntry[]>();
      }
      return afterFunctionId === beforeFunctionId
        ? beforeTimelines
        : createFunctionTimelines(index, afterFunctionId, cache);
    }, [index, afterFunctionId, beforeFunctionId, cache, beforeTimelines],
  );
  const beforeTrace =
    cache && before
      ? findTraceForSnapshot(before.snapshotId, cache)
      : undefined;
  const afterTrace =
    cache && after ? findTraceForSnapshot(after.snapshotId, cache) : undefined;
  const beforePosition =
    before && cache ? cache.snapshotIdToPosition.get(before.snapshotId) : undefined;
  const afterPosition =
    after && cache ? cache.snapshotIdToPosition.get(after.snapshotId) : undefined;
  const beforeEntry =
    beforeTrace && beforePosition !== undefined
      ? beforeTimelines.get(beforeTrace.id)?.[beforePosition]
      : undefined;
  const afterEntry =
    afterTrace && afterPosition !== undefined
      ? afterTimelines.get(afterTrace.id)?.[afterPosition]
      : undefined;
  const activeSelection = activeSide === "before" ? before : after;
  const activeTrace =
    cache && activeSelection
      ? findTraceForSnapshot(activeSelection.snapshotId, cache)
      : undefined;
  const activeTimelines = activeSide === "before" ? beforeTimelines : afterTimelines;
  const timeline = activeTrace ? (activeTimelines.get(activeTrace.id) ?? []) : [];

  const selectTimelineEntry = (entry: TimelineEntry) => {
    if (!activeSelection) return;
    const selection = { ...activeSelection, snapshotId: entry.snapshot.id };
    if (activeSide === "before") setBefore(selection);
    else setAfter(selection);
  };

  const stepTimeline = (offset: -1 | 1) => {
    if (!activeSelection || !cache) return;
    const current = cache.snapshotIdToPosition.get(activeSelection.snapshotId);
    if (current === undefined) return;
    const next = timeline[current + offset];
    if (next) selectTimelineEntry(next);
  };

  const selectionsShareTrace = Boolean(
    beforeTrace && beforeTrace.id === afterTrace?.id,
  );
  const nextSelections =
    cache && before && after
      ? advanceSelectionsTogether(before, after, cache)
      : undefined;

  const advanceBoth = () => {
    if (!nextSelections) return;

    setAfter(nextSelections.after);
    setBefore(nextSelections.before);
  };

  const advanceToNextDifference = () => {
    const nextDifferenceSelections =
      cache && before && after
        ? advanceSelectionsToNextDifference(before, after, cache)
        : undefined;
    if (!nextDifferenceSelections) return;
    setBefore(nextDifferenceSelections.before);
    setAfter(nextDifferenceSelections.after);
  };
  // NOTE: do not memoize these objects, or else this breaks and risks stale data.
  const matchAfter = () =>
    setBefore({
      functionId: after!.functionId,
      snapshotId: before!.snapshotId,
    });

  const matchBefore = () =>
    setAfter({
      functionId: before!.functionId,
      snapshotId: after!.snapshotId,
    });
  return (
    <main className="app">
      <header className="app__header">
        <div>
          <h1>Shermes IR pass viewer</h1>
          {fileName && <span className="app__file-name">{fileName}</span>}
        </div>
        <button className="app__button" onClick={() => open()}>
          Open dump file
        </button>
      </header>

      {error && <div className="app__error">Could not open dump: {error}</div>}

      {index && cache && before && after ? (
        <>
          <div
            style={{
              display: "flex",
              justifyContent: "flex-end",
              width: "100%",
            }}
          >
            <button
              className="app__button"
              type="button"
              aria-expanded={!sideSelectorsCollapsed}
              onClick={() => setSideSelectorsCollapsed((value) => !value)}
            >
              {sideSelectorsCollapsed ? "Expand" : "Collapse"}
            </button>
          </div>

          <section className="selectors" aria-label="Comparison selections">
            {!sideSelectorsCollapsed && (
              <>
                <SideSelector
                  side="before"
                  index={index}
                  cache={cache}
                  timelinesByTraceId={beforeTimelines}
                  selection={before}
                  active={activeSide === "before"}
                  onActivate={() => setActiveSide("before")}
                  onChange={setBefore}
                  matchOtherSide={matchAfter}
                />
                <SideSelector
                  side="after"
                  index={index}
                  cache={cache}
                  timelinesByTraceId={afterTimelines}
                  selection={after}
                  active={activeSide === "after"}
                  onActivate={() => setActiveSide("after")}
                  onChange={setAfter}
                  matchOtherSide={matchBefore}
                />
              </>
            )}
          </section>

          <section className="timeline" aria-label="Function timeline">
            <div className="timeline__heading">
              <div>
                <strong>
                  {activeSide === "before" ? "Before" : "After"} timeline
                </strong>
                {activeTrace && <span>{traceLabel(activeTrace)}</span>}
              </div>
              <div className="timeline__heading-actions">
                {!timelineCollapsed && (
                  <div className="timeline__navigation">
                    <button onClick={() => stepTimeline(-1)}>
                      Previous snapshot
                    </button>
                    <button onClick={() => stepTimeline(1)}>
                      Next snapshot
                    </button>
                    {selectionsShareTrace && (
                      <>
                        <button
                          disabled={!nextSelections}
                          onClick={advanceBoth}
                        >
                          Advance both
                        </button>
                        <button
                          disabled={!nextSelections}
                          onClick={advanceToNextDifference}
                        >
                          Advance to next difference
                        </button>
                      </>
                    )}
                  </div>
                )}
                <button
                  type="button"
                  aria-expanded={!timelineCollapsed}
                  onClick={() => setTimelineCollapsed((value) => !value)}
                >
                  {timelineCollapsed ? "Expand" : "Collapse"}
                </button>
              </div>
            </div>
            {!timelineCollapsed && (
              <div className="timeline__track">
                {timeline.map((entry) => {
                  const isBeforeSelection =
                    beforeTrace?.id === activeTrace?.id &&
                    entry.snapshot.id === before?.snapshotId;
                  const isAfterSelection =
                    afterTrace?.id === activeTrace?.id &&
                    entry.snapshot.id === after?.snapshotId;
                  const isComparisonSelection =
                    isBeforeSelection || isAfterSelection;
                  return (
                    <button
                      key={entry.snapshot.id}
                      className={`timeline__entry timeline__entry--${entry.status}${
                        isComparisonSelection
                          ? " timeline__entry--comparison-selected"
                          : ""
                      }${
                        entry.snapshot.id === activeSelection?.snapshotId
                          ? " timeline__entry--selected"
                          : ""
                      }`}
                      title={`${snapshotLabel(entry.snapshot)}: ${entry.status}${
                        isBeforeSelection ? " · Before" : ""
                      }${isAfterSelection ? " · After" : ""}`}
                      onClick={() => selectTimelineEntry(entry)}
                    >
                      <span className="timeline__marker" />
                      <span>{snapshotLabel(entry.snapshot)}</span>
                    </button>
                  );
                })}
              </div>
            )}
          </section>

          <section className="app__editor" aria-label="IR comparison">
            <IrDiffEditor
              original={functionText(index, beforeEntry)}
              modified={functionText(index, afterEntry)}
            />
          </section>
        </>
      ) : (
        !error && (
          <section className="app__empty">
            Open a Shermes <code>-Xdump-between-passes</code> dump to begin.
          </section>
        )
      )}
    </main>
  );
}

export default App;
