# Dump processing tools

These tools inspect generated Shermes dumps without copying complete dump
contents into reports.

## Corpus survey

Run the survey against the default grammar-refinement corpus:

```sh
node dump_processing_tools/survey-dumps.mjs
```

The default report is written to:

```text
dump_processing_tools/generated/corpus-survey.json
```

Survey another file or directory:

```sh
node dump_processing_tools/survey-dumps.mjs \
  --input path/to/dumps \
  --output path/to/report.json
```

Use `--stdout` instead of `--output` to print JSON.

The survey streams each dump as fatal UTF-8 and reports structural counts,
function-header forms, pass names, line endings, marker-like string contents,
diagnostic text before the first trace, and structural anomalies. Examples are
limited and long lines are truncated, so the report stays small even when the
input corpus is large.

Run its test with:

```sh
node --test dump_processing_tools/survey-dumps.test.mjs
```

## Parser corpus validation

Parse and validate every grammar-refinement dump without writing indexed dump
files:

```sh
node --experimental-strip-types dump_processing_tools/validate-parser-corpus.ts
```

Pass a dump file or another directory as the first argument to override the
default corpus. The command prints only per-file counts, warning counts, and
timings; it does not print dump contents.
