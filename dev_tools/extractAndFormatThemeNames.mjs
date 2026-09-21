import * as fs from "node:fs";

import { themes } from "../vendored_libs/tm-themes/index.js";


let themeNameStringList = "";

for (const theme of themes) {
  themeNameStringList += `"${theme.name}",`;
}

fs.writeFileSync(
  "./shermes_ir_pass_viewer/src/themeNames.ts",
  `export const themeNamesArray = [${themeNameStringList}];\nexport const themeNames = new Set(themeNamesArray);
`,
);
