import assert from "node:assert/strict";
import test from "node:test";
import { buildDumpIndex } from "./dump_parser.ts";
import {
  advanceSelectionsToNextDifference,
  advanceSelectionsTogether,
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

test("carries only an established removal into later module traces", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
    "*** AFTER DCE", "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("helper"), "", fn("other"), "",
    "*** INITIAL STATE", "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const target = index.functions.find((identity) => identity.internalName === "target");
  assert.ok(target);

  assert.equal(timelineFor(index, index.traceSegments[1], target.id)[0].status, "removed");
  assert.equal(timelineFor(index, index.traceSegments[2], target.id)[0].status, "unavailable");
  assert.equal(timelineFor(index, index.traceSegments[3], target.id)[0].status, "present");
});

test("does not infer a new removal only from a later module trace absence", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target"), "", fn("helper"), "",
    "*** INITIAL STATE", "", fn("helper"), "", fn("other"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const target = index.functions.find((identity) => identity.internalName === "target");
  assert.ok(target);

  assert.equal(timelineFor(index, index.traceSegments[1], target.id)[0].status, "unavailable");
});

test("advances both selections by one ordinal while preserving their gap", async () => {
  const dump = [
    "*** INITIAL STATE", "", fn("target", "0"), "",
    "*** AFTER A", "", fn("target", "1"), "",
    "*** AFTER B", "", fn("target", "2"), "",
    "*** AFTER C", "", fn("target", "3"), "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(dump));
  const target = index.functions[0];
  const snapshots = index.traceSegments[0].snapshots;
  const before: Selection = { functionId: target.id, snapshotId: snapshots[0].id };
  const after: Selection = { functionId: target.id, snapshotId: snapshots[1].id };

  const advanced = advanceSelectionsTogether(index, before, after);
  assert.equal(advanced?.before.snapshotId, snapshots[1].id);
  assert.equal(advanced?.after.snapshotId, snapshots[2].id);

  const atEnd = advanceSelectionsTogether(index, advanced!.before, {
    ...advanced!.after,
    snapshotId: snapshots[3].id,
  });
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
  const target = index.functions[0];
  const snapshots = index.traceSegments[0].snapshots;
  const before: Selection = { functionId: target.id, snapshotId: snapshots[0].id };
  const after: Selection = { functionId: target.id, snapshotId: snapshots[1].id };

  const advanced = advanceSelectionsToNextDifference(index, before, after);
  assert.equal(advanced?.before.snapshotId, snapshots[2].id);
  assert.equal(advanced?.after.snapshotId, snapshots[3].id);

  assert.equal(
    advanceSelectionsToNextDifference(index, advanced!.before, advanced!.after),
    undefined,
  );
});
