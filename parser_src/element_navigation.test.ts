import assert from "node:assert/strict";
import test from "node:test";
import { buildDumpIndex } from "./dump_parser.ts";
import {
  createElementNavigation,
  parseElementReference,
} from "./element_navigation.ts";

const encoder = new TextEncoder();

test("parses only exact instruction and basic-block references", () => {
  assert.deepEqual(parseElementReference(" %72 ", "function:1"), {
    kind: "instruction",
    functionId: "function:1",
    number: 72,
  });
  assert.deepEqual(parseElementReference("%BB11", "function:1"), {
    kind: "basic-block",
    functionId: "function:1",
    number: 11,
  });
  assert.equal(parseElementReference("%bb11", "function:1"), undefined);
  assert.equal(parseElementReference("%VS11", "function:1"), undefined);
  assert.equal(parseElementReference("%11: any", "function:1"), undefined);
  assert.equal(
    parseElementReference("%999999999999999999999999", "function:1"),
    undefined,
  );
});

function snapshot(heading: string, instruction: string): string {
  return [
    heading,
    "",
    "function main(): undefined",
    "%BB0:",
    instruction,
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");
}

function snapshotBody(heading: string, body: string[]): string {
  return [heading, "", "function main(): undefined", ...body, "function_end", ""].join(
    "\n",
  );
}

test("finds adjacent instruction content changes in both directions", async () => {
  const dump =
    snapshot("*** INITIAL STATE", "  %0 = LoadConstInst (:number) 1: number") +
    snapshot("*** AFTER Same", "  %0 = LoadConstInst (:number) 1: number") +
    snapshot("*** AFTER Change", "  %0 = LoadConstInst (:number) 2: number");
  const index = await buildDumpIndex(encoder.encode(dump));
  const navigation = createElementNavigation(index);
  const functionId = index.functions[0].id;
  const snapshots = index.traceSegments[0].snapshots;
  const target = { kind: "instruction", functionId, number: 0 } as const;

  const next = navigation.findElementChange(target, snapshots[0].id, "next");
  assert.deepEqual(next?.reasons, ["content-changed"]);
  assert.equal(next?.beforeSnapshotId, snapshots[1].id);
  assert.equal(next?.afterSnapshotId, snapshots[2].id);

  const previous = navigation.findElementChange(
    target,
    snapshots[2].id,
    "previous",
  );
  assert.equal(previous?.beforeSnapshotId, snapshots[1].id);
  assert.equal(previous?.afterSnapshotId, snapshots[2].id);
});

test("finds instruction additions and removals while preserving the missing side", async () => {
  const withoutTarget = snapshot(
    "*** INITIAL STATE",
    "  %1 = LoadConstInst (:number) 1: number",
  );
  const withTarget = snapshot(
    "*** AFTER Add",
    "  %0 = LoadConstInst (:number) 2: number",
  );
  const removedAgain = snapshot(
    "*** AFTER Remove",
    "  %1 = LoadConstInst (:number) 1: number",
  );
  const index = await buildDumpIndex(
    encoder.encode(withoutTarget + withTarget + removedAgain),
  );
  const navigation = createElementNavigation(index);
  const target = {
    kind: "instruction",
    functionId: index.functions[0].id,
    number: 0,
  } as const;
  const snapshots = index.traceSegments[0].snapshots;

  const added = navigation.findElementChange(target, snapshots[0].id, "next");
  assert.deepEqual(added?.reasons, ["added"]);
  assert.equal(added?.beforeOccurrence, undefined);
  assert.ok(added?.afterOccurrence);

  const removed = navigation.findElementChange(target, snapshots[1].id, "next");
  assert.deepEqual(removed?.reasons, ["removed"]);
  assert.ok(removed?.beforeOccurrence);
  assert.equal(removed?.afterOccurrence, undefined);
});

test("reports instruction text, block movement, and relative reordering without positional noise", async () => {
  const initial = snapshotBody("*** INITIAL STATE", [
    "%BB0:",
    "  %0 = LoadConstInst (:number) 1: number",
    "  %1 = LoadConstInst (:number) 2: number",
    "%BB1:",
    "       ReturnInst undefined: undefined",
  ]);
  const inserted = snapshotBody("*** AFTER Insert", [
    "%BB0:",
    "  %9 = LoadConstInst (:number) 9: number",
    "  %0 = LoadConstInst (:number) 1: number",
    "  %1 = LoadConstInst (:number) 2: number",
    "%BB1:",
    "       ReturnInst undefined: undefined",
  ]);
  const reordered = snapshotBody("*** AFTER Reorder", [
    "%BB0:",
    "  %9 = LoadConstInst (:number) 9: number",
    "  %1 = LoadConstInst (:number) 2: number",
    "  %0 = LoadConstInst (:number) 1: number",
    "%BB1:",
    "       ReturnInst undefined: undefined",
  ]);
  const movedAndChanged = snapshotBody("*** AFTER Move", [
    "%BB0:",
    "  %9 = LoadConstInst (:number) 9: number",
    "  %1 = LoadConstInst (:number) 2: number",
    "%BB1:",
    "  %0 = LoadConstInst (:number) 3: number",
    "       ReturnInst undefined: undefined",
  ]);
  const index = await buildDumpIndex(
    encoder.encode(initial + inserted + reordered + movedAndChanged),
  );
  const navigation = createElementNavigation(index);
  const snapshots = index.traceSegments[0].snapshots;
  const target = {
    kind: "instruction",
    functionId: index.functions[0].id,
    number: 0,
  } as const;

  const firstChange = navigation.findElementChange(target, snapshots[0].id, "next");
  assert.deepEqual(firstChange?.reasons, ["reordered-within-block"]);
  assert.equal(firstChange?.beforeSnapshotId, snapshots[1].id);
  assert.equal(firstChange?.afterSnapshotId, snapshots[2].id);

  const secondChange = navigation.findElementChange(target, snapshots[2].id, "next");
  assert.deepEqual(secondChange?.reasons, [
    "content-changed",
    "moved-between-blocks",
  ]);
});

test("tracks block reordering and unnumbered instruction content", async () => {
  const initial = snapshotBody("*** INITIAL STATE", [
    "%BB0:",
    "       StoreStackInst 1: number, %0",
    "%BB1:",
    "       ReturnInst undefined: undefined",
  ]);
  const inserted = snapshotBody("*** AFTER InsertBlock", [
    "%BB9:",
    "       BranchInst %BB0",
    "%BB0:",
    "       StoreStackInst 1: number, %0",
    "%BB1:",
    "       ReturnInst undefined: undefined",
  ]);
  const reordered = snapshotBody("*** AFTER ReorderBlocks", [
    "%BB9:",
    "       BranchInst %BB0",
    "%BB1:",
    "       ReturnInst undefined: undefined",
    "%BB0:",
    "       StoreStackInst 1: number, %0",
  ]);
  const changed = snapshotBody("*** AFTER ChangeUnnumbered", [
    "%BB9:",
    "       BranchInst %BB0",
    "%BB1:",
    "       ReturnInst undefined: undefined",
    "%BB0:",
    "       StoreStackInst 2: number, %0",
  ]);
  const index = await buildDumpIndex(
    encoder.encode(initial + inserted + reordered + changed),
  );
  const navigation = createElementNavigation(index);
  const snapshots = index.traceSegments[0].snapshots;
  const target = {
    kind: "basic-block",
    functionId: index.functions[0].id,
    number: 0,
  } as const;

  const firstChange = navigation.findElementChange(target, snapshots[0].id, "next");
  assert.deepEqual(firstChange?.reasons, ["block-reordered"]);
  assert.equal(firstChange?.beforeSnapshotId, snapshots[1].id);
  assert.equal(firstChange?.afterSnapshotId, snapshots[2].id);

  const secondChange = navigation.findElementChange(target, snapshots[2].id, "next");
  assert.deepEqual(secondChange?.reasons, ["content-changed"]);
});

test("does not mistake an unavailable function for element removal", async () => {
  const main = snapshot("*** INITIAL STATE", "  %0 = LoadConstInst (:number) 1: number");
  const other = [
    "*** AFTER OtherFunction",
    "",
    "function other(): undefined",
    "%BB0:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(main + other));
  assert.equal(index.traceSegments[0].scope.kind, "unknown");
  const navigation = createElementNavigation(index);
  const target = {
    kind: "instruction",
    functionId: index.functions[0].id,
    number: 0,
  } as const;

  assert.equal(
    navigation.findElementChange(
      target,
      index.traceSegments[0].snapshots[0].id,
      "next",
    ),
    undefined,
  );
});

test("recognizes element removal when a module-scoped trace removes its function", async () => {
  const initial = [
    "*** INITIAL STATE",
    "",
    "function main(): undefined",
    "%BB0:",
    "  %0 = LoadConstInst (:number) 1: number",
    "function_end",
    "function other(): undefined",
    "%BB0:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");
  const after = [
    "*** AFTER RemoveMain",
    "",
    "function other(): undefined",
    "%BB0:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");
  const index = await buildDumpIndex(encoder.encode(initial + after));
  assert.equal(index.traceSegments[0].scope.kind, "module");
  const navigation = createElementNavigation(index);
  const target = {
    kind: "instruction",
    functionId: index.functions.find((identity) => identity.internalName === "main")!.id,
    number: 0,
  } as const;

  assert.deepEqual(
    navigation.findElementChange(
      target,
      index.traceSegments[0].snapshots[0].id,
      "next",
    )?.reasons,
    ["removed"],
  );
});
