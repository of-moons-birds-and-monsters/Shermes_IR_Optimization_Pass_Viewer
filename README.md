# Shermes IR Pass Viewer

AI-Slopping up some dumps.

This is a simple web app that lets you view the output of Shermes '-Xdump-between-passes' in a more convenient and interactive way.
Sloppin' it up and is work in progress but it does work and has some basic features.

Uses Vite 8 so requires Node.js ^20.19.0 >= 22.12.0

## Usage

**Dumps are not uploaded anywhere, this app runs purelly locally**

1. Dump the IR optimization pass output via `-Xdump-between-passes`
2. cd into ir_pass_viewer Start the web app with `npm run dev` (uses vite)
3. Open the dump file via "Open dump file" button

- file picker takes .txt .log .dump or .ll files
- files are parsed in the browser so especially large files could slow down the app

**Dumping with Shermes**
You must capture both stdout and stderr to get the dump.

```
  ./debug_build/bin/shermes \
    -typed \
    -Xdump-between-passes \
    input.ts \
    > output.dump 2>&1
```

## Terms

**dump**: the output of `-Xdump-between-passes`
**index**: the index of the dump

**snapshots**: the output IR of a specific optimizaiton pass being run on a specific function
**trace**: (From DUMP_INDEX_FORMAT.md)

```
A trace segment begins with one `*** INITIAL STATE` heading and continues up to,
but not including, the next `*** INITIAL STATE` heading or the end of the dump.

```

It is a series dumps of functions and blocks of functions after their optmizations pass.

`*** INITIAL STATE` Is something output by shermes itself.
It is output before a run of optimizations passes on a module is started and before a run of optimizations passes on a function is started.
Check these methods to see the prints. Shermes PassManager.cpp (where they are found as of 2026-09-20)

```
void PassManager::run(Function *F);
bool PassManager::run(Module *M)
```

Each trace contains a variable number of dumps of IR pass output (snapshots).
Sometimes functions will have multiple outputs of a specific optimization pass in a single trace.
Multiple optimization passes can happen multiple times over the course of a trace.

## Features

The UI is a diff viewer, it displays to Monaco editors for the before and after code along with function and snapshot selections, a timeline, and various navigation buttons.

**The Editors**

- Monaco is the open source core editor component used by VSCode.
- The left side is the "Before" code, the right side is the "After" code.
- Each pane can independently select a function and snapshot to view.
- Clicking a pane will make it the active pane.
- The active pane has a highlighted border.
- The active pane determines which timeline is shown.
- Timeline controls based on selected active pane.

**The Timeline**

- Entries are [snapshots](#terms) in [dump](#terms) order within one trace.
- Before and After selections are marked on the timeline.
- Clicking a timeline entry changes the active sides snapshot

**Function and Snapshot Selection**

- To select a function to view use the Function dropdown
- You can select a particular functions particular optimization output with the "Snapshot" drop down
- This dropdown will also show the [trace](#terms) a particular snapshot belongs

To have one diff window function match the other click the "Match before/after" button to have that diff windows function match the other ones
That button will not match the trace, only the function. You must manually select the Snapshot to be on the same trace if you want those navigation
features to work (trace matching button will be added shortly)

Within the drop you will see various snapshots labeld with states

```
present
changed
unchanged
introduced
removed
unavailable
unreachable
unknown
```

- **unavailable**: the function was not emitted in this trace/snapshot, but removal cannot be inferred.
- **unknown**: the dump contains an ambiguous or inconsistent lifecycle gap.
- **introduced**: absent from the preceding snapshot and present in the current
  snapshot;
- **unchanged**: present in both snapshots with equal `contentSha256` values;
- **changed**: present in both snapshots with different `contentSha256` values;
- **removed**: present in the preceding snapshot and absent from the current
  snapshot;
- **unreachable**: present with `FunctionVersion.unreachable` set to true.

missing **present** and **unknown**

**Navigation**
In order for the Next Element Change, Previous Element Change, Advance to Next Difference , and Go to previous difference to work you must
be on the same function AND the same trace in both diff windows.

Advance to Next Difference and Go to previous difference will move forward and backwards to the next time there is a difference in the function defintions

`Next element change` and `Previous element change` act on numbered instructions and basic blocks
You can select a numbered instruction by clicking on the actual number "%72" or select a basic block by clicking on the "%BB11" label.
Additionally you can enter a instruction label or basic block label in the `IR element` text input box and it will select the instruction or basic block
Labels are case sensitive and must include the `%` sign

You can then move forwards or backwards to the next or previous change to that instruction or basic block
I attempted to define what a "change" is in the navigation spec in ELEMENT_NAVIGATION.md

ELEMENT_NAVIGATION.md is a specification file for the navigation, not technically instructions, so look for clearer instructions here in the future

## Components

There are two main components with this project.

1. The dump parser.

- parses the output of -Xdump-between-passes
- found in `parser_src`

2. The UI.

The parser is integrated with the UI, just press the `Open dump file` button and the parser will run
The parser also has a standalone spec its based on , `DUMP_INDEX_FORMAT.md`

The spec explains the format and expected contents of the index it creates from the dump
The spec is written with typescript types to illustrate the types/data structures the parser should produce, however it in part exists to make implementing parsers in
other languages easier.
I will rewrite the spec to remove the typescript types and make it more language agnostic, but I think you could easily translate that to other languages currently .
(There are not any ts only things embedded into the spec)

There is a separate spec for some of the navigation features `ELEMENT_NAVIGATION.md`
It tries to define things like "what are changes between basic block" in a basic way:w

## Future work

Coming soon:

- cross trace navigation (if no issues are found that would make this impossible)
- trace matching button

better UI.
The options menu needs so much work, I cannot do shaders and I cannot get AI to do the shaders for me well so it does not match well.
