# Shermes IR Pass Viewer

AI-Slopping up some dumps.

This is a simple web app that lets you view the output of Shermes '-Xdump-between-passes' in a more convenient and interactive way.
Sloppin' it up and is work in progress but it does work and has some basic features.

It is used for debugging Shermes optimizer transformations

Uses Vite 8 so requires Node.js ^20.19.0 >= 22.12.0

## Usage

**Dumps viewed in this app are not uploaded anywhere, everything runs locally in your browser**

1. Dump the IR optimization pass output via `-Xdump-between-passes`
2. cd into ir_pass_viewer
3. install the dependencies with `npm install` or whatever package manager you want to use
4. c Start the web app with `npm run dev` (uses vite)
5. Open the dump file via "Open dump file" button

- file picker takes .txt .log .dump or .ll files
- files are parsed in the browser so especially large files could slow down the app

**Dumping with Shermes**
You must capture stderr to get the dump outputs. The pass content is written basically entirely to stderr so you could probably just redirect that without stdout

```
  ./debug_build/bin/shermes \
    -typed \
    -Xdump-between-passes \
    input.ts \
    &> output.dump 2>&1
```

## Terms

**dump**: the output of `-Xdump-between-passes`

**index**: the index of the dump

**snapshots**: the output IR of a specific optimization pass being run on a function or multiple functions. A module scoped snapshot could contain the entire module.
In the diff viewer mode you can only ever view a single function from a snapshot at a time.
Snapshots are delimited by either the `*** INITIAL STATE` heading or `*** AFTER <pass-name>` heading.

**trace**: (From DUMP_INDEX_FORMAT.md)

```
A trace segment begins with one `*** INITIAL STATE` heading and continues up to,
but not including, the next `*** INITIAL STATE` heading or the end of the dump.

```

A trace is an ordered series of snapshots which belong to one optimizer run over a function or over a whole module.
Current dump format cannot distinguish a one-function module trace from a function trace, which is why it may be classified as `unknown`
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
The collapse buttons hide the selection and timeline.
There is an options panel that lets you change the Monaco theme, it uses shiki js themes from the tm-theme package. There is no support for custom themes currently.

- you cannot turn off the shader background in the options menu. I am not allowing this.

### The Editors

- Monaco is the open source core editor component used by VSCode.
- Monaco is a textual diff editor, so the IR semantics are not being considered when it displays the diffs.
- The left side is the "Before" code, the right side is the "After" code.
- Each pane can independently select a function and snapshot to view.
- Clicking a pane will make it the active pane.
- The active pane has a highlighted border.
- The active pane determines which timeline is shown.
- Timeline controls based on selected active pane.

**Note**: The syntax highlighting is based on LLVM IR syntax grammar, not some Shermes IR grammar.

### The Timeline

The Timeline

- Entries are [snapshots](#terms) in [dump](#terms) order within one trace.
- Before and After selections are marked on the timeline.
- Clicking a timeline entry changes the active sides snapshot

### Function and Snapshot Selection

- To select a function to view use the Function dropdown
- You can select a particular functions particular optimization output with the "Snapshot" drop down
- This dropdown will also show the [trace](#terms) a particular snapshot belongs

To have one diff window function match the other click the "Match before/after" button to have that diff windows function match the other ones
That button will not match the trace, only the function. You must manually select the Snapshot to be on the same trace if you want those navigation
features to work (trace matching button will be added shortly)

Within the snapshot dropdown you will see various snapshots labeled with states

- **unavailable**: the function was not emitted in this trace/snapshot, but removal cannot be inferred.
- **unknown**: the dump contains an ambiguous or inconsistent life cycle gap.
- **introduced**: absent from the preceding snapshot and present in the current
  snapshot;
- **unchanged**: present in both snapshots with equal `contentSha256` values;
- **changed**: present in both snapshots with different `contentSha256` values;
- **removed**: present in the preceding snapshot and absent from the current
  snapshot;
- **unreachable**: present with `FunctionVersion.unreachable` set to true. Functions with this might have been removed or had their code moved to other functions
- **present**: function is present in initial snapshot for the trace. The initial state will be marked with this.

### Navigation

In order for the Next Element Change, Previous Element Change, Advance to Next Difference , and Go to previous difference to work you must
be on the same function AND the same trace in both diff windows.

this kind of differnce nativation is currently restricted to the same function and same trace.
`Advance to next difference` and `Go to previous difference` will move forward and backwards to the next time there is a difference in the function definitions.
The entire function, and all its text, is hashed and the hashes are compared to determine if there is a difference.

`Next element change` and `Previous element change` act on numbered instructions and basic blocks
You can forwards or backwards to nearest change to that instruction or basic block

You can select a numbered instruction by clicking on the actual number "%72" or select a basic block by clicking on the "%BB11" label.
Clicking on a numbered instruction will select **that** instruction and not the instruction of the line it is on.
Example: clicking on `%1` on this line will select `%1` , it will not select `%72`

```ll
%72 = AddInst %1, %2, %3
```

Only **numbered** instructions are **selectable**
Example: you cannot select this line for tracking `StoreStackInst undefined: undefined, %1: any`

```ll
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
```

Numbered instructions are those which return some value. This system is not perfect and I am going to try and expand this tracking to all instructions.

However un-numbered instructions are still used when determining changes for basic blocks.

Additionally you can enter a instruction label or basic block label in the `IR element` text input box and it will select the instruction or basic block
Labels are case sensitive and must include the `%` sign
Example: If you wanted to select the `%BB0` label you would enter `%BB0` into the text input box. If you wanted instruction "%3" you would enter "%3"

```ll
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
```

**%VS0** is not selectable

#### What are changes?

These are also spelled out in the navigation specification **ELEMENT_NAVIGATION.md**

**Instruction changes**
For instructions changes are not perfect. The changes are not aware of IR semantics. Additionally to prevent a lot of false positives positional changes are relative
Instruction changes are when

- the content of the instruction has been changed (content is hashed and this are compared)
- the instruction is moved between basic blocks
- when the basic block in unchanged by the relative order of the instructions does change

```ll
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
```

And in the second one we swap the order of %3 and %4, that **would be a change**

```ll
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
```

Order is relative however, and the system is not IR semantics aware, so if we have a block

```ll
%BB1:
  %4 = (Does something with %2) %2, %3
  %5
```

and we insert a `PrStoreInst` before BEFORE `%4` that writes to `%2` `

```ll
PrStoreInst %6: number, %2: object, 0: number, "i": string, true: boolean
%4 = (Does something with %2) %2, %3
%6
```

**`%1` will not have moved relative to the existing value , `%2`, in the previous snapshot so no change will be reported**
**The system does not look at the IR semantics so even though `%1` has been changed by the new write, `PrStoreInst`, to its operand, no change will be reported**

**Basic block changes**

basic block changes are similar to instruction changes but simpler.,

- the content of the block has changed (content is hashed and this are compared)
- changed relative order amount blocks present in both snapshots
  So if we have 2 basic blocks

```ll
%BB0:
%BB1:
```

Then we swapped them in the second snapshot **this would be a change**

```ll
%BB1:
%BB0:
```

If, instead of reordering the blocks, we just inserted a new block before `%BB0`

```ll
%BB2:
%BB0:
%BB1:
```

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
(There are not any ts only things embedded into the spec, aside from strings with a built in length field I guess)

There is a separate spec for some of the navigation features `ELEMENT_NAVIGATION.md`
It tries to define things like "what are changes between basic block" in a basic way

3. Dump Index Specification `DUMP_INDEX_FORMAT.md`
   This is the parser output spec.

4. Element Navigation Specification `ELEMENT_NAVIGATION.md`
   The Element Navigation spec defines the navigation features and how they are meant to work

## Future work

Coming soon:

- cross trace navigation (if no issues are found that would make this impossible)
- trace matching button

better UI.
The options menu needs so much work, I cannot do shaders and I cannot get AI to do the shaders for me well so it does not match well.
