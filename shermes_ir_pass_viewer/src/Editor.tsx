import { DiffEditor, type DiffOnMount } from "@monaco-editor/react";
import "./monaco"; // imports the config setup that loads monaco locally instead of from a CDN.

export interface IrDiffEditorProps {
  original: string;
  modified: string;
  sideBySide?: boolean;
}

const handleMount: DiffOnMount = (editor, monaco) => {
  // Both parameters are inferred from DiffOnMount.
  editor.getModifiedEditor().updateOptions({ readOnly: true });
  monaco.editor.setTheme("vs-dark");
};

export function IrDiffEditor({
  original,
  modified,
  sideBySide = true,
}: IrDiffEditorProps) {
  return (
    <DiffEditor
      original={original}
      modified={modified}
      language="llvm"
      //theme="vs-dark"
      onMount={handleMount}
      options={{
        automaticLayout: true,
        readOnly: true,
        renderSideBySide: sideBySide,
        minimap: { enabled: false },
      }}
    />
  );
}
