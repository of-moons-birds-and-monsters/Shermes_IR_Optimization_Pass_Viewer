import assert from "node:assert/strict";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import test from "node:test";
import { surveyCorpus } from "./survey-dumps.mjs";

const toolDirectory = dirname(fileURLToPath(import.meta.url));

test("surveys structural dump grammar without returning dump bodies", async () => {
  const report = await surveyCorpus(join(toolDirectory, "test-fixtures"));

  assert.equal(report.summary.fileCount, 1);
  assert.equal(report.summary.initialSnapshotCount, 1);
  assert.equal(report.summary.afterPassSnapshotCount, 1);
  assert.equal(report.summary.functionHeaderCount, 2);
  assert.equal(report.summary.functionEndCount, 2);
  assert.deepEqual(report.passNames, [{ name: "DCE", count: 1 }]);
  assert.equal(report.functionHeaderKinds.function.count, 2);
  assert.equal(report.scopeLines.count, 1);
  assert.equal(report.markerLikeLines.count, 1);
  assert.deepEqual(report.anomalies, []);
  assert.equal("dumpText" in report, false);
});
