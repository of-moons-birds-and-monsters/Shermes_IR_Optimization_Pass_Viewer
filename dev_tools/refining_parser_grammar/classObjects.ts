class EasyClass {
  name: string;
  constructor(name: string) {
    this.name = name;
  }
  returnNameGreeting(): string {
    return "Hello, my name is " + this.name;
  }
}
//const easyObject: EasyClass = new EasyClass("handy");
const easyObject: EasyClass = {
  name: "handy",
  returnNameGreeting(): string {
    return "Hello, my name is " + this.name;
  },
};
const shapedEasyObject = {
  name: "handy",
  returnNameGreeting(): string {
    return "Hello, my name is " + this.name;
  },
};

function easyObjectPrintName(obj: EasyClass) {
  print(obj.returnNameGreeting());
}
easyObjectPrintName(easyObject);
easyObjectPrintName(shapedEasyObject);
