import { loader } from "@monaco-editor/react";
import * as monaco from "monaco-editor";
import editorWorker from "monaco-editor/esm/vs/editor/editor.worker?worker";
import jsonWorker from "monaco-editor/esm/vs/language/json/json.worker?worker";
import cssWorker from "monaco-editor/esm/vs/language/css/css.worker?worker";
import htmlWorker from "monaco-editor/esm/vs/language/html/html.worker?worker";
import tsWorker from "monaco-editor/esm/vs/language/typescript/ts.worker?worker";
import { shikiToMonaco } from "@shikijs/monaco";
import { createHighlighter } from "shiki";

self.MonacoEnvironment = {
  getWorker(_, label) {
    if (label === "json") {
      return new jsonWorker();
    }
    if (label === "css" || label === "scss" || label === "less") {
      return new cssWorker();
    }
    if (label === "html" || label === "handlebars" || label === "razor") {
      return new htmlWorker();
    }
    if (label === "typescript" || label === "javascript") {
      return new tsWorker();
    }
    return new editorWorker();
  },
};

// Give @monaco-editor/react the locally installed Monaco instance. Its editor
// components initialize this singleton when they mount, without using a CDN.
loader.config({ monaco });

// shikiToMonaco configures Monaco's API namespace, not an individual editor
// instance. The React wrapper uses this same locally configured namespace.
const highlighter = await createHighlighter({
  themes: ["vitesse-dark", "vitesse-light"],
  langs: ["llvm"],
});

monaco.languages.register({ id: "llvm" });
shikiToMonaco(highlighter, monaco);
monaco.editor.setTheme("vitesse-dark");

export { monaco };
export type Monaco = typeof monaco;
