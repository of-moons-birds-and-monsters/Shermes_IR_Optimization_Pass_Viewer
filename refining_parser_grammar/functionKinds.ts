function functionDeclaration(
  name: string,
  args: string[],
  bodyId: number,
): string {
  for (let i = 0; i < args.length; i++) {
    args[i] = args[i].replace(/\s/g, "");
    args[i] = args[i] + name;
  }

  return args.join("");
}

const namedFuncExpr = function funcExp(id: number) {
  const obj = { id: id, subObjCreator: funcExp };

  return () => obj;
};

const anonymousFuncExpr = function (counter: number, val: string) {
  let newMsg: string = "";
  for (let i = 0; i < counter; i++) {
    newMsg += val;
  }
  const obj = {
    counter: counter,
    val: val,
    subObjCreator: anonymousFuncExpr,
    newMsg: newMsg,
  };
  return () => obj;
};

const arrowFunc = (val: string, counter: number) => {
  let newMsg: string = "";
  for (let i = 0; i < counter; i++) {
    newMsg += val;
  }
  const obj = {
    counter: counter,
    val: val,
    subObjCreator: arrowFunc,
    newMsg: newMsg,
  };
  return () => obj;
};
