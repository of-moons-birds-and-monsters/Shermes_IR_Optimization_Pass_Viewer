import assert from "node:assert/strict";
import { createHash } from "node:crypto";
import test from "node:test";
import { buildDumpIndex } from "./dump_parser.ts";

const encoder = new TextEncoder();

function sha256(text: string): string {
  return createHash("sha256").update(text, "utf8").digest("hex");
}

function sha256InstructionLines(lines: string[]): string {
  const chunks = lines.flatMap((line) => {
    const bytes = Buffer.from(line, "utf8");
    const length = Buffer.alloc(8);
    length.writeBigUInt64BE(BigInt(bytes.length));
    return [length, bytes];
  });
  return createHash("sha256").update(Buffer.concat(chunks)).digest("hex");
}

test("indexes one function in one initial snapshot without changing its text", async () => {
  const dump = [
    "*** INITIAL STATE",
    "",
    "function main(): undefined [typed]",
    "%BB0:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.equal(index.format, "shermes-ir-pass-viewer-dump-index");
  assert.equal(index.schemaVersion, 2);
  assert.equal(index.dump.text, dump);
  assert.equal(index.dump.textSha256, sha256(dump));
  assert.equal(index.traceSegments.length, 1);
  assert.equal(index.traceSegments[0].snapshots.length, 1);
  assert.equal(index.traceSegments[0].snapshots[0].kind, "initial");
  assert.equal(index.functions.length, 1);
  assert.equal(index.functions[0].internalName, "main");
  assert.equal(index.functionVersions.length, 1);

  const snapshot = index.traceSegments[0].snapshots[0];
  const identity = index.functions[0];
  const version = index.functionVersions[0];
  assert.equal(
    dump.slice(snapshot.headingRange.start, snapshot.headingRange.end),
    "*** INITIAL STATE",
  );
  assert.equal(
    dump.slice(identity.firstHeaderRange.start, identity.firstHeaderRange.end),
    "function main(): undefined [typed]",
  );
  assert.equal(
    dump.slice(version.dumpRange.start, version.dumpRange.end),
    [
      "function main(): undefined [typed]",
      "%BB0:",
      "       ReturnInst undefined: undefined",
      "function_end",
    ].join("\n"),
  );
  assert.equal(
    version.contentSha256,
    sha256(dump.slice(version.dumpRange.start, version.dumpRange.end)),
  );
  assert.deepEqual(index.diagnostics, []);
  assert.deepEqual(index.warnings, []);
});

test("indexes basic blocks and only numbered instructions while hashing every instruction", async () => {
  const dump = [
    "*** INITIAL STATE",
    "",
    "function main(): undefined",
    "%BB0:",
    "; input.ts:1:1",
    "  %0 = LoadConstInst (:number) 1: number",
    "       StoreStackInst %0: number, %1",
    "%BB1:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));
  const functionVersion = index.functionVersions[0];

  assert.equal(index.schemaVersion, 2);
  assert.equal(index.basicBlockVersions.length, 2);
  assert.equal(index.instructionVersions.length, 1);

  const [firstBlock, secondBlock] = index.basicBlockVersions;
  assert.deepEqual(
    {
      functionVersionId: firstBlock.functionVersionId,
      functionId: firstBlock.functionId,
      snapshotId: firstBlock.snapshotId,
      number: firstBlock.number,
      ordinal: firstBlock.ordinal,
    },
    {
      functionVersionId: functionVersion.id,
      functionId: functionVersion.functionId,
      snapshotId: functionVersion.snapshotId,
      number: 0,
      ordinal: 0,
    },
  );
  assert.equal(secondBlock.number, 1);
  assert.equal(secondBlock.ordinal, 1);
  assert.equal(
    dump.slice(firstBlock.dumpRange.start, firstBlock.dumpRange.end),
    [
      "%BB0:",
      "; input.ts:1:1",
      "  %0 = LoadConstInst (:number) 1: number",
      "       StoreStackInst %0: number, %1",
    ].join("\n") + "\n",
  );

  const instruction = index.instructionVersions[0];
  assert.equal(instruction.number, 0);
  assert.equal(instruction.basicBlockNumber, 0);
  assert.equal(instruction.ordinalInBlock, 0);
  assert.equal(
    dump.slice(instruction.dumpRange.start, instruction.dumpRange.end),
    "  %0 = LoadConstInst (:number) 1: number",
  );
  assert.equal(
    instruction.contentSha256,
    sha256("  %0 = LoadConstInst (:number) 1: number"),
  );
  assert.equal(
    firstBlock.contentSha256,
    sha256InstructionLines([
      "  %0 = LoadConstInst (:number) 1: number",
      "       StoreStackInst %0: number, %1",
    ]),
  );
});

test("rejects IR numbers that cannot be represented without loss", async () => {
  const dump = [
    "*** INITIAL STATE",
    "",
    "function main(): undefined",
    "%BB999999999999999999999999:",
    "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ].join("\n");

  await assert.rejects(
    buildDumpIndex(encoder.encode(dump)),
    /basic block number.*exceeds the safe integer range/,
  );
});

test("keeps repeated pass invocations and trace segments distinct", async () => {
  const functionText = [
    "function main(): undefined",
    "%BB0:",
    "       ReturnInst undefined: undefined",
    "function_end",
  ].join("\n");
  const dump = [
    "*** INITIAL STATE",
    "",
    functionText,
    "",
    "*** AFTER DCE",
    "",
    functionText,
    "",
    "*** AFTER DCE",
    "",
    functionText,
    "",
    "*** INITIAL STATE",
    "",
    functionText,
    "",
  ].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.equal(index.traceSegments.length, 2);
  assert.deepEqual(
    index.traceSegments[0].snapshots.map((snapshot) => ({
      id: snapshot.id,
      kind: snapshot.kind,
      pass: snapshot.pass,
    })),
    [
      { id: "snapshot:0:0", kind: "initial", pass: undefined },
      {
        id: "snapshot:0:1",
        kind: "after-pass",
        pass: { name: "DCE", occurrence: 0 },
      },
      {
        id: "snapshot:0:2",
        kind: "after-pass",
        pass: { name: "DCE", occurrence: 1 },
      },
    ],
  );
  assert.equal(index.traceSegments[1].snapshots[0].id, "snapshot:1:0");
  assert.equal(index.functions.length, 1);
  assert.equal(index.functionVersions.length, 4);
  assert.equal(
    index.traceSegments[0].dumpRange.end,
    index.traceSegments[1].dumpRange.start,
  );
});

test("recognizes every function header kind and decodes quoted internal names", async () => {
  const headers = [
    "function global(): any",
    "base constructor Walker(id: number): undefined [typed]",
    "derived constructor Child(): undefined [typed]",
    'arrow ""(): object',
    'method "name with spaces"(): undefined',
    'generator inner "say\\x22hello 1#"(action: number): any',
  ];
  const functions = headers.flatMap((header, index) => [
    header,
    "%BB0:",
    index === 0
      ? '  %0 = LoadConstInst (:string) "function_end": string'
      : "       ReturnInst undefined: undefined",
    "function_end",
    "",
  ]);
  const dump = ["*** INITIAL STATE", "", ...functions].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.deepEqual(
    index.functions.map((identity) => identity.internalName),
    ["global", "Walker", "Child", "", "name with spaces", 'say"hello 1#'],
  );
  assert.equal(index.functionVersions.length, headers.length);
  assert.deepEqual(index.traceSegments[0].scope, { kind: "module" });
  assert.deepEqual(index.warnings, []);
});

test("preserves CRLF and uses UTF-16 offsets around Unicode text", async () => {
  const functionText = [
    "function café(): undefined",
    "%BB0:",
    '  %0 = LoadConstInst (:string) "😀": string',
    "       ReturnInst undefined: undefined",
    "function_end",
  ].join("\r\n");
  const dump = `*** INITIAL STATE\r\n\r\n${functionText}\r\n`;

  const index = await buildDumpIndex(encoder.encode(dump));
  const version = index.functionVersions[0];

  assert.equal(index.dump.text, dump);
  assert.equal(index.functions[0].internalName, "café");
  assert.equal(
    dump.slice(version.dumpRange.start, version.dumpRange.end),
    functionText,
  );
  assert.equal(
    version.dumpRange.end,
    dump.indexOf("\r\n", version.dumpRange.start + functionText.length),
  );
});

test("preserves a diagnostic preamble before the first trace", async () => {
  const preamble = [
    "input.ts:4:2: warning: example warning",
    "  unsupportedThing();",
    "  ^~~~~~~~~~~~~~~~~",
    "",
  ].join("\n");
  const dump = `${preamble}*** INITIAL STATE\n\nfunction main(): undefined\nfunction_end\n`;

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.equal(index.diagnostics.length, 1);
  assert.equal(index.diagnostics[0].severity, "warning");
  assert.equal(
    dump.slice(
      index.diagnostics[0].dumpRange.start,
      index.diagnostics[0].dumpRange.end,
    ),
    preamble,
  );
  assert.equal(index.traceSegments[0].dumpRange.start, preamble.length);
});

test("rejects invalid UTF-8 instead of replacing bytes", async () => {
  await assert.rejects(
    buildDumpIndex(Uint8Array.from([0x2a, 0x2a, 0x2a, 0xff])),
    TypeError,
  );
});

test("returns diagnostics and a warning when compiler output contains no IR", async () => {
  const dump = "input.ts:1:1: error: expected an expression\n";

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.deepEqual(index.traceSegments, []);
  assert.deepEqual(index.functions, []);
  assert.equal(index.diagnostics.length, 1);
  assert.equal(index.diagnostics[0].severity, "error");
  assert.equal(
    dump.slice(
      index.diagnostics[0].dumpRange.start,
      index.diagnostics[0].dumpRange.end,
    ),
    dump,
  );
  assert.deepEqual(
    index.warnings?.map((warning) => warning.code),
    ["no-ir-snapshots"],
  );
});

test("recognizes functions with the 'unreachable' attribute", async () => {
  const dump = [
    "*** INITIAL STATE",
    "",

    "function at(index: any): any [allCallsitesKnownInStrictMode,unreachable]",
    "%BB0:",
    "  %0 = LoadParamInst (:any) %<this>: any",
    "  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment",
    "  %3 = LoadParamInst (:any) %index: any",
    '  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string',
    '  %6 = LoadPropertyInst (:any) %5: any, "String": string',
    '  %7 = LoadPropertyInst (:any) %6: any, "prototype": string',
    '  %8 = LoadPropertyInst (:any) %7: any, "at": string',
    "  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any",
    "        ReturnInst %10: any",
    "function_end",
    "",
  ].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.equal(index.functions.length, 1);
  assert.equal(index.functions[0].internalName, "at");
  //assert.equal(index.functions[0].unreachable, true);
  assert.equal(index.functionVersions.length, 1);
  assert.equal(index.functionVersions[0].unreachable, true);
});
test("recognizes functions without the  'unreachable' attribute", async () => {
  const dump = [
    "*** INITIAL STATE",
    "",

    "function at(index: any): any [allCallsitesKnownInStrictMode]",
    "%BB0:",
    "  %0 = LoadParamInst (:any) %<this>: any",
    "  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment",
    "  %3 = LoadParamInst (:any) %index: any",
    '  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string',
    '  %6 = LoadPropertyInst (:any) %5: any, "String": string',
    '  %7 = LoadPropertyInst (:any) %6: any, "prototype": string',
    '  %8 = LoadPropertyInst (:any) %7: any, "at": string',
    "  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any",
    "        ReturnInst %10: any",
    "function_end",
    "",
  ].join("\n");

  const index = await buildDumpIndex(encoder.encode(dump));

  assert.equal(index.functions.length, 1);
  assert.equal(index.functions[0].internalName, "at");
  //assert.equal(index.functions[0].unreachable, true);
  assert.equal(index.functionVersions.length, 1);
  assert.equal(index.functionVersions[0].unreachable, false);
});
