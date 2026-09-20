import { useCallback, useEffect, useRef } from "react";
import {
  DiffEditor,
  type DiffOnMount,
  type MonacoDiffEditor,
} from "@monaco-editor/react";
import type { editor as MonacoEditor } from "monaco-editor";
import type { ComparisonSide } from "./dumpNavigation";
import { monaco } from "./monaco";

export interface IrDiffEditorProps {
  original: string;
  modified: string;
  sideBySide?: boolean;
  originalElementOffset?: number;
  modifiedElementOffset?: number;
  onSelectElement?: (side: ComparisonSide, reference: string) => void;
}

const ELEMENT_REFERENCE = /%(?:BB\d+|\d+)\b/g;

function referenceAtColumn(line: string, column: number): string | undefined {
  const offset = column - 1;
  for (const match of line.matchAll(ELEMENT_REFERENCE)) {
    const start = match.index;
    const end = start + match[0].length;
    if (offset >= start && offset < end) return match[0];
  }
  return undefined;
}

export function IrDiffEditor({
  original,
  modified,
  sideBySide = true,
  originalElementOffset,
  modifiedElementOffset,
  onSelectElement,
}: IrDiffEditorProps) {
  const diffEditorRef = useRef<MonacoDiffEditor | null>(null);
  const originalDecorationsRef =
    useRef<MonacoEditor.IEditorDecorationsCollection | null>(null);
  const modifiedDecorationsRef =
    useRef<MonacoEditor.IEditorDecorationsCollection | null>(null);
  const onSelectElementRef = useRef(onSelectElement);

  useEffect(() => {
    onSelectElementRef.current = onSelectElement;
  }, [onSelectElement]);

  const handleMount: DiffOnMount = useCallback(
    (editor, monaco) => {
      diffEditorRef.current = editor;
      const originalEditor = editor.getOriginalEditor();
      const modifiedEditor = editor.getModifiedEditor();
      modifiedEditor.updateOptions({ readOnly: true });
      monaco.editor.setTheme("vitesse-dark");
      originalDecorationsRef.current = originalEditor.createDecorationsCollection();
      modifiedDecorationsRef.current = modifiedEditor.createDecorationsCollection();

      const listen = (
        side: ComparisonSide,
        codeEditor: MonacoEditor.ICodeEditor,
      ) =>
        codeEditor.onMouseDown((event) => {
          const position = event.target.position;
          const model = codeEditor.getModel();
          if (!position || !model) return;
          const reference = referenceAtColumn(
            model.getLineContent(position.lineNumber),
            position.column,
          );
          if (reference) onSelectElementRef.current?.(side, reference);
        });

      const originalListener = listen("before", originalEditor);
      const modifiedListener = listen("after", modifiedEditor);
      editor.onDidDispose(() => {
        originalListener.dispose();
        modifiedListener.dispose();
        diffEditorRef.current = null;
        originalDecorationsRef.current = null;
        modifiedDecorationsRef.current = null;
      });
    },
    [],
  );

  useEffect(() => {
    const diffEditor = diffEditorRef.current;
    if (!diffEditor) return;

    const reveal = (
      codeEditor: MonacoEditor.ICodeEditor,
      decorations: MonacoEditor.IEditorDecorationsCollection | null,
      offset: number | undefined,
    ) => {
      const model = codeEditor.getModel();
      if (!model || offset === undefined) {
        decorations?.clear();
        return;
      }
      const position = model.getPositionAt(offset);
      decorations?.set([
        {
          range: {
            startLineNumber: position.lineNumber,
            startColumn: 1,
            endLineNumber: position.lineNumber,
            endColumn: model.getLineMaxColumn(position.lineNumber),
          },
          options: { isWholeLine: true, className: "selected-ir-element" },
        },
      ]);
      codeEditor.revealLineInCenter(
        position.lineNumber,
        monaco.editor.ScrollType.Smooth,
      );
    };

    reveal(
      diffEditor.getOriginalEditor(),
      originalDecorationsRef.current,
      originalElementOffset,
    );
    reveal(
      diffEditor.getModifiedEditor(),
      modifiedDecorationsRef.current,
      modifiedElementOffset,
    );
  }, [original, modified, originalElementOffset, modifiedElementOffset]);

  return (
    <DiffEditor
      original={original}
      modified={modified}
      language="llvm"
      theme="vitesse-dark"
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
