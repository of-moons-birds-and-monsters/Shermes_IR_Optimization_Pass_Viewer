import assert from "node:assert/strict";
import test from "node:test";
import { buildDumpIndex } from "./dump_parser.ts";
import {
  advanceSelectionsToNextDifference,
  advanceSelectionsTogether,
  createDumpNavigationCache,
  timelineFor,
  type Selection,
} from "../shermes_ir_pass_viewer/src/dumpNavigation.ts";

const encoder = new TextEncoder();

function fn(name: string, value = "undefined"): string {
  return [
    `function ${name}(): undefined`,
    "%BB0:",
    `  ReturnInst ${value}: undefined`,
    "function_end",
  ].join("\n");
}

test("indexes every function version in a shared module snapshot", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("first"), "", fn("second"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const snapshotId = index.traceSegments[0].snapshots[0].id;
  const versions = cache.functionVersionsBySnapshotId.get(snapshotId);

  assert.equal(versions?.size, 2);
  assert.equal(versions?.get(index.functions[0].id)?.functionId, index.functions[0].id);
  assert.equal(versions?.get(index.functions[1].id)?.functionId, index.functions[1].id);
});

test("indexes trace, ordinal, and chronological function history", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target", "0"), "", fn("helper"), "",
    "*** AFTER Change", "", fn("target", "1"), "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("target", "2"), "", fn("helper"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions.find((identity) => identity.internalName === "target");
  assert.ok(target);
  const snapshots = index.traceSegments.flatMap((trace) => trace.snapshots);

  assert.equal(cache.snapshotIdToTrace.get(snapshots[0].id)?.id, index.traceSegments[0].id);
  assert.equal(cache.snapshotIdToTrace.get(snapshots[2].id)?.id, index.traceSegments[1].id);
  assert.equal(cache.snapshotIdToPosition.get(snapshots[0].id), 0);
  assert.equal(cache.snapshotIdToPosition.get(snapshots[1].id), 1);
  assert.deepEqual(
    cache.functionVersionsByFunctionId
      .get(target.id)
      ?.map((version) => version.snapshotId),
    snapshots.map((snapshot) => snapshot.id),
  );
});

test("carries only an established removal into later module traces", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
    "*** AFTER DCE", "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("helper"), "", fn("other"), "",
    "*** INITIAL STATE", "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions.find((identity) => identity.internalName === "target");
  assert.ok(target);

  assert.equal(timelineFor(index.traceSegments[1], target.id, cache)[0].status, "removed");
  assert.equal(timelineFor(index.traceSegments[2], target.id, cache)[0].status, "unavailable");
  assert.equal(timelineFor(index.traceSegments[3], target.id, cache)[0].status, "present");
  assert.equal(
    timelineFor(index.traceSegments[3], target.id, cache)[0]
      .afterRemovalBoundary,
    false,
  );
});

test("does not infer a new removal only from a later module trace absence", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("helper"), "", fn("other"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions.find((identity) => identity.internalName === "target");
  assert.ok(target);

  assert.equal(timelineFor(index.traceSegments[1], target.id, cache)[0].status, "unavailable");
});

test("advances both selections by one ordinal while preserving their gap", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target", "0"), "",
    "*** AFTER A", "", fn("target", "1"), "",
    "*** AFTER B", "", fn("target", "2"), "",
    "*** AFTER C", "", fn("target", "3"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions[0];
  const snapshots = index.traceSegments[0].snapshots;
  const before: Selection = { functionId: target.id, snapshotId: snapshots[0].id };
  const after: Selection = { functionId: target.id, snapshotId: snapshots[1].id };

  const advanced = advanceSelectionsTogether(before, after, cache);
  assert.equal(advanced?.before.snapshotId, snapshots[1].id);
  assert.equal(advanced?.after.snapshotId, snapshots[2].id);

  const atEnd = advanceSelectionsTogether(advanced!.before, {
    ...advanced!.after,
    snapshotId: snapshots[3].id,
  }, cache);
  assert.equal(atEnd, undefined);
});

test("advances both selections to the next pair with different contents", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target", "0"), "",
    "*** AFTER A", "", fn("target", "0"), "",
    "*** AFTER B", "", fn("target", "0"), "",
    "*** AFTER C", "", fn("target", "1"), "",
    "*** AFTER D", "", fn("target", "1"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions[0];
  const snapshots = index.traceSegments[0].snapshots;
  const before: Selection = { functionId: target.id, snapshotId: snapshots[0].id };
  const after: Selection = { functionId: target.id, snapshotId: snapshots[1].id };

  const advanced = advanceSelectionsToNextDifference(before, after, cache);
  assert.equal(advanced?.before.snapshotId, snapshots[2].id);
  assert.equal(advanced?.after.snapshotId, snapshots[3].id);

  assert.equal(
    advanceSelectionsToNextDifference(advanced!.before, advanced!.after, cache),
    undefined,
  );
});

test("attaches outgoing inlining events to the callee's after-pass timeline entry", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("callee"), "", fn("caller"), "",
    "Inlining function 'callee' input.ts:2:1 into function 'caller' input.ts:6:1",
    "Inlining function 'callee' input.ts:2:1 into function 'caller' input.ts:6:1",
    "*** AFTER Inlining", "", fn("callee"), "", fn("caller"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const callee = index.functions.find(
    (identity) => identity.internalName === "callee",
  );
  assert.ok(callee);

  const timeline = timelineFor(index.traceSegments[0], callee.id, cache);
  assert.equal(timeline[0].inliningEvents.length, 0);
  assert.equal(timeline[1].inliningEvents.length, 2);
  assert.equal(timeline[1].inliningEvents[0].caller.internalName, "caller");
  assert.deepEqual(timeline[1].terminalInliningDestinations, [
    {
      internalName: "caller",
      functionId: index.functions.find(
        (identity) => identity.internalName === "caller",
      )?.id,
      snapshotId: index.traceSegments[0].snapshots[1].id,
      callsiteCount: 2,
    },
  ]);
});

test("follows later inlining events to the final destination", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("main"), "", fn("wrapper"), "",
    fn("anonymousWrapper"), "", fn("global"), "",
    "Inlining function 'main' input.ts:8:1 into function 'wrapper' input.ts:1:1",
    "Inlining function 'wrapper' input.ts:1:1 into function 'anonymousWrapper' input.ts:1:1",
    "Inlining function 'anonymousWrapper' input.ts:1:1 into function 'global' input.ts:1:1",
    "*** AFTER Inlining", "", fn("main"), "", fn("wrapper"), "",
    fn("anonymousWrapper"), "", fn("global"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const main = index.functions.find(
    (identity) => identity.internalName === "main",
  );
  const global = index.functions.find(
    (identity) => identity.internalName === "global",
  );
  assert.ok(main);
  assert.ok(global);

  const afterInlining = timelineFor(index.traceSegments[0], main.id, cache)[1];
  assert.deepEqual(afterInlining.terminalInliningDestinations, [
    {
      internalName: "global",
      functionId: global.id,
      snapshotId: index.traceSegments[0].snapshots[1].id,
      callsiteCount: 1,
    },
  ]);
});
