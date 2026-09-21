//namespace modtwo {
//  export type Tester = {
//    test: string;
//  };
//}
type Tester = {
  test: string;
};
type FakeModule = {
  returnIt: (module: any, exports: any) => void;
};

//var print = console.log;
type ModOneExportObjectType = {
  testFunction: (test: TestObject) => void;
};
type ModOneType = {
  exports: ModOneExportObjectType;
};
var objectFakeDep: FakeModule = {
  returnIt(module: ModOneType, exports: ModOneExportObjectType) {
    type TestObject = {
      test: string;
      test2: string;
      numericTest: number;
    };
    function testFunction(test: TestObject) {
      console.log(test.numericTest);
      console.log(test.test);
      console.log(test.test2);
    }
    module.exports = { testFunction: testFunction };
  },
};

type FunctionType = (test: TestObject) => void;
function getModule(modRet: FakeModule) {
  var modObj: any = {
    exports: {},
  };

  modRet.returnIt(modObj, modObj.exports);
  return modObj.exports;
}

type TestObject = {
  test: string;
  test2: string;
  numericTest: number;
};
const { testFunction } = getModule(objectFakeDep);
const testObject: TestObject = {
  test: "penis",
  test2: "test2",
  numericTest: 1,
};

function testFunction2(test: TestObject) {
  console.log(test.numericTest);
  console.log(test.test);
  console.log(test.test2);
}
class TestClass {
  test3: number;
  test2: string;
  test: string;
  constructor(test: TestObject) {
    this.test = test.test;
    this.test2 = test.test2;
    this.test3 = 69;
  }
}
function printTestClass(test: TestClass) {
  console.log(test.test);
  console.log(test.test2);
  console.log(test.test3);
}
var mod: any = {};
((mod) => {
  type FakeOtherObject = {
    handleIt: string;
    iHateNumbers: number;
  };

  const newObject: TestObject = {
    test: "test",
    test2: "test2",
    numericTest: 1,
  };
  const badObject: FakeOtherObject = {
    handleIt: "handleIt",
    iHateNumbers: 1,
  };
  class TestClass {
    test: string;
    test2: string;
    constructor(test: TestObject) {
      this.test = test.test;
      this.test2 = test.test2;
    }
  }
  mod.TestClass = TestClass;
  function testFunction3(test: TestObject) {
    console.log("testFunction3");
    console.log(newObject.numericTest);
    console.log(newObject.test);
    console.log(newObject.test2);
  }
  //testFunction3(newObject);

  //(TestClass as any).__proto__.test3 = 60;

  //testFunction3(badObject);
})(mod);

const objectWeird = {
  test: "test",
};
function testerFunction(test: any) {
  console.log("testerFunction");
  console.log(test.test);
}
testerFunction(objectWeird);

class FakeTestClass {
  nameplate: string;
  constructor(val: string) {
    this.nameplate = val;
  }
  testFunction(test: TestObject) {
    console.log("testFunction");
    console.log(this.nameplate);
    console.log(test.numericTest);
    console.log(test.test);
    console.log(test.test2);
  }
}
const outerTestClass = new TestClass(testObject);
testerFunction(outerTestClass);

const classObj: FakeTestClass = {
  nameplate: "nameplate",
  testFunction(test: TestObject) {
    console.log("I print nothing ");
    console.log(test.numericTest);
  },
};
function funcA(obj: FakeTestClass) {
  obj.testFunction(testObject);
}
const badClassObj = {
  nameplate: "bade object",
};
const ff = new FakeTestClass("hi");
funcA(ff);
funcA(classObj);
function CHECKED_CAST<T>(obj: any): T {
  return obj as T;
}
funcA(CHECKED_CAST<FakeTestClass>(badClassObj));
console.log("printing outerTestClass test4");

const innerTestClass = new mod.TestClass(testObject);
const innerTestClass2: TestClass = new mod.TestClass(testObject);
innerTestClass2.test3 = 88888;
