import assert from "node:assert/strict";
import test from "node:test";
import { buildDumpIndex } from "../../parser_src/dump_parser.ts";
import {
  advanceSelectionsToNextDifference,
  advanceSelectionsTogether,
  createDumpNavigationCache,
  isAfterRemovalBoundary,
  timelineFor,
} from "./dumpNavigation.ts";

const encoder = new TextEncoder();

function functionText(name: string, value: number): string {
  return [
    `function ${name}(): undefined`,
    "%BB0:",
    `  %0 = LoadConstInst (:number) ${value}: number`,
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");
}

function snapshot(
  heading: string,
  functions: ReadonlyArray<[name: string, value: number]>,
): string {
  return `${heading}\n\n${functions
    .map(([name, value]) => functionText(name, value))
    .join("")}`;
}

async function removalFixture() {
  const dump =
    snapshot("*** INITIAL STATE", [
      ["target", 1],
      ["survivor", 2],
    ]) +
    snapshot("*** AFTER Same", [
      ["target", 1],
      ["survivor", 2],
    ]) +
    snapshot("*** AFTER Remove", [["survivor", 2]]) +
    snapshot("*** AFTER Later", [["survivor", 2]]) +
    snapshot("*** INITIAL STATE", [["survivor", 2]]) +
    snapshot("*** AFTER FunctionPass", [["survivor", 3]]);
  const index = await buildDumpIndex(encoder.encode(dump));
  const cache = createDumpNavigationCache(index);
  const target = index.functions.find(
    (identity) => identity.internalName === "target",
  );
  assert.ok(target);
  return { index, cache, functionId: target.id };
}

test("records the first module removal and marks only later snapshots as after it", async () => {
  const { index, cache, functionId } = await removalFixture();
  const firstTrace = index.traceSegments[0];
  const laterTrace = index.traceSegments[1];
  assert.equal(firstTrace.scope.kind, "module");

  const timeline = timelineFor(firstTrace, functionId, cache);
  assert.equal(timeline[2].status, "removed");
  assert.equal(timeline[2].afterRemovalBoundary, false);
  assert.equal(timeline[3].afterRemovalBoundary, true);
  assert.equal(
    isAfterRemovalBoundary(functionId, laterTrace.snapshots[0].id, cache),
    true,
  );
});

test("optional forward-navigation policy stops after but not at removal", async () => {
  const { index, cache, functionId } = await removalFixture();
  const snapshots = index.traceSegments[0].snapshots;
  const before = { functionId, snapshotId: snapshots[0].id };
  const after = { functionId, snapshotId: snapshots[1].id };

  const stoppedAtRemoval = advanceSelectionsTogether(before, after, cache, {
    stopAfterRemovalBoundary: true,
  });
  assert.equal(stoppedAtRemoval?.after.snapshotId, snapshots[2].id);
  assert.equal(
    advanceSelectionsTogether(
      stoppedAtRemoval!.before,
      stoppedAtRemoval!.after,
      cache,
      { stopAfterRemovalBoundary: true },
    ),
    undefined,
  );

  const allowedPastRemoval = advanceSelectionsTogether(
    stoppedAtRemoval!.before,
    stoppedAtRemoval!.after,
    cache,
    { stopAfterRemovalBoundary: false },
  );
  assert.equal(allowedPastRemoval?.after.snapshotId, snapshots[3].id);

  const nextDifference = advanceSelectionsToNextDifference(
    before,
    after,
    cache,
    { stopAfterRemovalBoundary: true },
  );
  assert.equal(nextDifference?.after.snapshotId, snapshots[2].id);
});
