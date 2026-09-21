import { loader } from "@monaco-editor/react";
import * as monaco from "monaco-editor";
import editorWorker from "monaco-editor/esm/vs/editor/editor.worker?worker";
import jsonWorker from "monaco-editor/esm/vs/language/json/json.worker?worker";
import cssWorker from "monaco-editor/esm/vs/language/css/css.worker?worker";
import htmlWorker from "monaco-editor/esm/vs/language/html/html.worker?worker";
import tsWorker from "monaco-editor/esm/vs/language/typescript/ts.worker?worker";
import { shikiToMonaco } from "@shikijs/monaco";
import {
  createHighlighter,
  type HighlighterGeneric,
  type BundledLanguage,
  type BundledTheme,
  type ThemeRegistrationResolved,
} from "shiki";
//import * as fs from "node:fs";
import { themeNamesArray } from "./themeNames";
const baseThemeFileLocation = "../vendored_libs/tm-themes/themes/";
function loadTheme(themeName: string): Promise<ThemeRegistrationResolved> {
  try {
    return import(`${baseThemeFileLocation}${themeName}.json`).then((data) => {
      return data;
    });
  } catch (e) {
    console.error(e);
    throw e;
  }
}
function loadAllThemesIntoHighlighter(
  highlighter: HighlighterGeneric<BundledLanguage, BundledTheme>,
  themeNames: string[],
) {
  for (let i = 0; i < themeNames.length; i++) {
    const themeName = themeNames[i];

    highlighter.loadTheme(loadTheme(themeName));
  }
}
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
  themes: ["vitesse-dark", "vitesse-light", ...themeNamesArray],
  langs: ["llvm"],
});

loadAllThemesIntoHighlighter(highlighter, themeNamesArray);

monaco.languages.register({ id: "llvm" });
shikiToMonaco(highlighter, monaco);
monaco.editor.setTheme("vitesse-dark");

export { monaco, highlighter };
export type Hightlighter = typeof highlighter;
export type Monaco = typeof monaco;
