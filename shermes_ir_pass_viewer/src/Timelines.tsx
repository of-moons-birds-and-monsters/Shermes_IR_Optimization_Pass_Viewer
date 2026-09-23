import {
  type TimelineEntry,
  type Selection,
  type InliningDestination,
  snapshotLabel,
  traceLabel,
} from "./dumpNavigation";
import { type TraceSegment } from "../../parser_src/dump_parser";
import { useState, useRef, useLayoutEffect } from "react";
export type InliningTimelineBranch = {
  id: string;
  sourceSnapshotId: string;
  destination: InliningDestination;
  trace: TraceSegment;
  timeline: TimelineEntry[];
};

export type TimelineConnector = {
  id: string;
  path: string;
};
type SingleTimelineProps = {
  timeline: TimelineEntry[];
  timelineTrackRef: React.RefObject<HTMLDivElement | null>;
  scrollRef: React.RefObject<HTMLDivElement | null>;

  beforeTrace?: TraceSegment;
  afterTrace?: TraceSegment;
  activeTrace?: TraceSegment;
  before?: Selection;
  after?: Selection;
  activeSelection?: Selection;
  selectTimelineEntry: (entry: TimelineEntry) => void;
};
//@FIXME: Can I make this the base timeline component then call it in the  `ExpandedInliningTimeline`?
export function SingleTimeline({
  timeline,
  timelineTrackRef,
  scrollRef,
  beforeTrace,
  afterTrace,
  activeTrace,
  before,
  after,
  activeSelection,
  selectTimelineEntry,
}: SingleTimelineProps) {
  scrollRef.current = timelineTrackRef.current;
  return (
    <div className="timeline__track" ref={timelineTrackRef}>
      {timeline.map((entry) => {
        const isBeforeSelection =
          beforeTrace?.id === activeTrace?.id &&
          entry.snapshot.id === before?.snapshotId;
        const isAfterSelection =
          afterTrace?.id === activeTrace?.id &&
          entry.snapshot.id === after?.snapshotId;
        const isComparisonSelection = isBeforeSelection || isAfterSelection;
        return (
          <button
            key={entry.snapshot.id}
            className={[
              `timeline__entry timeline__entry--${entry.status}`,
              entry.unreachable ? "timeline__entry--unreachable" : "",
              isComparisonSelection
                ? " timeline__entry--comparison-selected"
                : "",
              entry.snapshot.id === activeSelection?.snapshotId
                ? " timeline__entry--selected"
                : "",
            ]
              .filter(Boolean)
              .join(" ")}
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
  );
}
type ExpandedInliningTimelineProps = {
  rootFunctionName: string;
  rootTrace: TraceSegment;

  rootTimeline: TimelineEntry[];
  timelineTrackRef: React.RefObject<HTMLDivElement | null>;
  scrollRef: React.RefObject<HTMLDivElement | null>;
  branches: InliningTimelineBranch[];

  before?: Selection;
  after?: Selection;
  activeSelection?: Selection;
  onSelectRootEntry: (entry: TimelineEntry) => void;
};
export function ExpandedInliningTimeline({
  rootFunctionName,
  rootTrace,
  rootTimeline,
  timelineTrackRef,
  scrollRef,

  branches,
  before,
  after,
  activeSelection,
  onSelectRootEntry,
}: ExpandedInliningTimelineProps) {
  const canvasRef = useRef<HTMLDivElement>(null);
  const nodeRefs = useRef(new Map<string, HTMLElement>());
  const [connectors, setConnectors] = useState<TimelineConnector[]>([]);
  const maxSnapshots = Math.max(
    rootTimeline.length,
    ...branches.map((branch) => branch.timeline.length),
  );

  useLayoutEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const updateConnectors = () => {
      const canvasRect = canvas.getBoundingClientRect();
      setConnectors(
        branches.flatMap((branch) => {
          const source = nodeRefs.current.get(
            `root:${branch.sourceSnapshotId}`,
          );
          const target = nodeRefs.current.get(
            `${branch.id}:${branch.destination.snapshotId}`,
          );
          if (!source || !target) return [];
          const sourceRect = source.getBoundingClientRect();
          const targetRect = target.getBoundingClientRect();
          const startX =
            sourceRect.left + sourceRect.width / 2 - canvasRect.left;
          const startY =
            sourceRect.top + sourceRect.height / 2 - canvasRect.top;
          const endX = targetRect.left + targetRect.width / 2 - canvasRect.left;
          const endY = targetRect.top + targetRect.height / 2 - canvasRect.top;
          const bendY = startY + (endY - startY) / 2;
          return [
            {
              id: branch.id,
              path: `M ${startX} ${startY} C ${startX} ${bendY}, ${endX} ${bendY}, ${endX} ${endY}`,
            },
          ];
        }),
      );
    };

    updateConnectors();
    const observer = new ResizeObserver(updateConnectors);
    observer.observe(canvas);
    window.addEventListener("resize", updateConnectors);
    return () => {
      observer.disconnect();
      window.removeEventListener("resize", updateConnectors);
    };
  }, [branches]);

  const registerNode = (key: string, node: HTMLElement | null) => {
    if (node) nodeRefs.current.set(key, node);
    else nodeRefs.current.delete(key);
  };

  return (
    <div ref={scrollRef} className="timeline-provenance__scroll">
      <div
        className="timeline-provenance__canvas"
        ref={canvasRef}
        style={{ minWidth: `calc(11rem + ${maxSnapshots * 8.5}rem)` }}
      >
        <svg
          className="timeline-provenance__connectors"
          width="100%"
          height="100%"
          aria-hidden="true"
        >
          {connectors.map((connector) => (
            <path key={connector.id} d={connector.path} />
          ))}
        </svg>

        <div className="timeline-provenance__row">
          <div className="timeline-provenance__label">
            <strong>{rootFunctionName || "(anonymous)"}</strong>
            <span>{traceLabel(rootTrace)}</span>
          </div>
          <div
            ref={timelineTrackRef}
            className="timeline__track timeline__track--provenance"
          >
            {rootTimeline.map((entry) => {
              const isBeforeSelection =
                entry.snapshot.id === before?.snapshotId;
              const isAfterSelection = entry.snapshot.id === after?.snapshotId;
              return (
                <button
                  key={entry.snapshot.id}
                  className={[
                    `timeline__entry timeline__entry--${entry.status}`,
                    entry.unreachable ? "timeline__entry--unreachable" : "",
                    isBeforeSelection || isAfterSelection
                      ? "timeline__entry--comparison-selected"
                      : "",
                    entry.snapshot.id === activeSelection?.snapshotId
                      ? "timeline__entry--selected"
                      : "",
                    entry.inliningEvents.length > 0
                      ? "timeline__entry--inline-source"
                      : "",
                  ]
                    .filter(Boolean)
                    .join(" ")}
                  title={`${snapshotLabel(entry.snapshot)}: ${entry.status}`}
                  onClick={() => onSelectRootEntry(entry)}
                >
                  <span
                    className="timeline__marker"
                    ref={(node) =>
                      registerNode(`root:${entry.snapshot.id}`, node)
                    }
                  />
                  <span>{snapshotLabel(entry.snapshot)}</span>
                </button>
              );
            })}
          </div>
        </div>

        {branches.map((branch) => (
          <div className="timeline-provenance__row" key={branch.id}>
            <div className="timeline-provenance__label">
              <strong>
                {branch.destination.internalName || "(anonymous)"}
              </strong>
              <span>{traceLabel(branch.trace)}</span>
            </div>
            <div className="timeline__track timeline__track--provenance">
              {branch.timeline.map((entry) => {
                const isTarget =
                  entry.snapshot.id === branch.destination.snapshotId;
                return (
                  <div
                    key={entry.snapshot.id}
                    className={[
                      `timeline__entry timeline__entry--${entry.status}`,
                      entry.unreachable ? "timeline__entry--unreachable" : "",
                      isTarget ? "timeline__entry--inline-target" : "",
                    ]
                      .filter(Boolean)
                      .join(" ")}
                    title={`${snapshotLabel(entry.snapshot)}: ${entry.status}`}
                  >
                    <span
                      className="timeline__marker"
                      ref={(node) =>
                        registerNode(`${branch.id}:${entry.snapshot.id}`, node)
                      }
                    />
                    <span>{snapshotLabel(entry.snapshot)}</span>
                  </div>
                );
              })}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
