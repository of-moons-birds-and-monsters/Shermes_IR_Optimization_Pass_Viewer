import "./App.css";
import { IrDiffEditor } from "./Editor";
import {
  useFileDialog,
  type UseFileDialogOptions,
} from "./hooks/useFileDialog";
import { buildDumpIndex, type DumpIndex } from "../../src/dump_parser";
import { useEffect, useState } from "react";
const before = `function "greet"(name: string): string {
%BB0:
  %0 = LoadFrameInst [name]
  %1 = BinaryOperatorInst '+', "Hello, ", %0
  ReturnInst %1
}`;

const after = `function "greet"(name: string): string {
%BB0:
  %0 = BinaryOperatorInst '+', "Hello, ", name
  ReturnInst %0
}`;

interface AppSettings {
  useFileDialog: UseFileDialogOptions;
}
const appSettings: AppSettings = {
  useFileDialog: { multiple: false },
};
function App() {
  const [files, open, reset] = useFileDialog(appSettings.useFileDialog);
  const [state, setState] = useState<DumpIndex>();
  useEffect(() => {
    if (files) {
      if (appSettings.useFileDialog.multiple === false && files.length > 1) {
        throw new Error("Multiple files are not allowed");
      }

      const file = files[0];
      file.bytes().then((bytes) => {
        buildDumpIndex(bytes).then((idx) => {
          setState(idx);
          console.log(idx);
        });
      });
    }
  }, [files]);

  return (
    <main className="app">
      <header className="app__header">
        <h1>Shermes IR pass viewer</h1>
        <section className="app__options" aria-label="Options">
          <button className="app__button" onClick={() => open()}>
            Open Dump File
          </button>
        </section>
      </header>
      <header className="app__header app_codeDisplayHeader">
        <span>Before</span>
        <span>After</span>
      </header>

      <section className="app__editor" aria-label="IR comparison">
        <IrDiffEditor original={before} modified={after} />
      </section>
    </main>
  );
}

export default App;
