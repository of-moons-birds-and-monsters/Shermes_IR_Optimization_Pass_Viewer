function CHECKED_CAST<T>(obj: any): T {
  return obj as T;
}
var __defProp = Object.defineProperty;
var __export = (target, all) => {
  for (var name in all)
    Object.defineProperty(target, name, { get: all[name], enumerable: true });
};

type ObjectWithCallProperty<T> = {
  [key: string]: () => T;
};
var fileName: string = "testingObjAccess.mjs";
type ExportFieldType<Ret> = {
  [key: string]: () => Ret;
};
type RetFunc<Ret> = () => Ret;
type ExportFileType = {
  fileName: RetFunc<string>;
};
//type ExportFileType = {
//  fileName: () => string;
//};
var ExportFile = CHECKED_CAST<ExportFileType>({});
__export(ExportFile, {
  fileName: function (): string {
    return fileName;
  },
});

type Greeter = {
  fileName: string;
};
function greet(obj: Greeter) {
  console.log(obj.fileName);
}
function greetExp(obj: ExportFileType) {
  console.log(obj.fileName);

  //print(val());
}

const normObj: Greeter = {
  fileName: "normObj",
};

//greet(normObj);
greetExp(ExportFile);
