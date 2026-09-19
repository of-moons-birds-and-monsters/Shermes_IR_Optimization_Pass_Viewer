import { useEffect, useMemo, useState } from "react";
import "./App.css";
import { IrDiffEditor } from "./Editor";
import {
  useFileDialog,
  type UseFileDialogOptions,
} from "./hooks/useFileDialog";
import { buildDumpIndex, type DumpIndex } from "../../src/dump_parser";
import {
  defaultSelections,
  findTraceForSnapshot,
  functionText,
  getTimelineEntry,
  snapshotForFunctionChange,
  snapshotLabel,
  timelineFor,
  traceLabel,
  type ComparisonSide,
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
  onActivate: () => void;
  onChange: (selection: Selection) => void;
};

function SideSelector({
  side,
  index,
  selection,
  active,
  onActivate,
  onChange,
}: SideSelectorProps) {
  const selectedEntry = getTimelineEntry(index, selection);

  const changeFunction = (functionId: string) => {
    const snapshotId = snapshotForFunctionChange(index, functionId, side);
    if (snapshotId) {
      onChange({ functionId, snapshotId });
    }
  };

  return (
    <fieldset
      className={`side-selector${active ? " side-selector--active" : ""}`}
      onFocus={onActivate}
      onClick={onActivate}
    >
      <legend>{side === "before" ? "Before" : "After"}</legend>
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
              {timelineFor(index, trace, selection.functionId).map((entry) => (
                <option key={entry.snapshot.id} value={entry.snapshot.id}>
                  {entry.snapshot.ordinal + 1}. {snapshotLabel(entry.snapshot)}{" "}
                  · {entry.status}
                </option>
              ))}
            </optgroup>
          ))}
        </select>
      </label>
      {selectedEntry && (
        <div className={`status-banner status-banner--${selectedEntry.status}`}>
          {statusMessage(selectedEntry)}
        </div>
      )}
    </fieldset>
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
  const [index, setIndex] = useState<DumpIndex>();
  const [before, setBefore] = useState<Selection>();
  const [after, setAfter] = useState<Selection>();
  const [activeSide, setActiveSide] = useState<ComparisonSide>("after");
  const [fileName, setFileName] = useState<string>();
  const [error, setError] = useState<string>();

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
        const selections = defaultSelections(nextIndex);
        setError(undefined);
        setIndex(nextIndex);
        setBefore(selections?.before);
        setAfter(selections?.after);
        setFileName(file.name);
      })
      .catch((reason: unknown) => {
        if (!cancelled) {
          setError(reason instanceof Error ? reason.message : String(reason));
          setIndex(undefined);
          setBefore(undefined);
          setAfter(undefined);
          setFileName(undefined);
        }
      });

    return () => {
      cancelled = true;
    };
  }, [files]);

  const beforeEntry = useMemo(
    () => (index && before ? getTimelineEntry(index, before) : undefined),
    [index, before],
  );
  const afterEntry = useMemo(
    () => (index && after ? getTimelineEntry(index, after) : undefined),
    [index, after],
  );
  const activeSelection = activeSide === "before" ? before : after;
  const activeTrace =
    index && activeSelection
      ? findTraceForSnapshot(index, activeSelection.snapshotId)
      : undefined;
  const timeline =
    index && activeSelection && activeTrace
      ? timelineFor(index, activeTrace, activeSelection.functionId)
      : [];

  const selectTimelineEntry = (entry: TimelineEntry) => {
    if (!activeSelection) return;
    const selection = { ...activeSelection, snapshotId: entry.snapshot.id };
    if (activeSide === "before") setBefore(selection);
    else setAfter(selection);
  };

  const stepTimeline = (offset: -1 | 1) => {
    if (!activeSelection) return;
    const current = timeline.findIndex(
      (entry) => entry.snapshot.id === activeSelection.snapshotId,
    );
    const next = timeline[current + offset];
    if (next) selectTimelineEntry(next);
  };

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

      {index && before && after ? (
        <>
          <section className="selectors" aria-label="Comparison selections">
            <SideSelector
              side="before"
              index={index}
              selection={before}
              active={activeSide === "before"}
              onActivate={() => setActiveSide("before")}
              onChange={setBefore}
            />
            <SideSelector
              side="after"
              index={index}
              selection={after}
              active={activeSide === "after"}
              onActivate={() => setActiveSide("after")}
              onChange={setAfter}
            />
          </section>

          <section className="timeline" aria-label="Function timeline">
            <div className="timeline__heading">
              <div>
                <strong>
                  {activeSide === "before" ? "Before" : "After"} timeline
                </strong>
                {activeTrace && <span>{traceLabel(activeTrace)}</span>}
              </div>
              <div className="timeline__navigation">
                <button onClick={() => stepTimeline(-1)}>
                  Previous snapshot
                </button>
                <button onClick={() => stepTimeline(1)}>Next snapshot</button>
              </div>
            </div>
            <div className="timeline__track">
              {timeline.map((entry) => (
                <button
                  key={entry.snapshot.id}
                  className={`timeline__entry timeline__entry--${entry.status}${entry.snapshot.id === activeSelection?.snapshotId
                      ? " timeline__entry--selected"
                      : ""
                    }`}
                  title={`${snapshotLabel(entry.snapshot)}: ${entry.status}`}
                  onClick={() => selectTimelineEntry(entry)}
                >
                  <span className="timeline__marker" />
                  <span>{snapshotLabel(entry.snapshot)}</span>
                </button>
              ))}
            </div>
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
