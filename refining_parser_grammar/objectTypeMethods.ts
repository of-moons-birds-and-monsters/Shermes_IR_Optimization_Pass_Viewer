//type ObjectTypeMethod = {
//  makeObject(val: any): any;
//};
//type ObjectMethod = {
//  val(val: any): string;
//};
//const objectTypeMethod: ObjectMethod = {
//  val(val: any): string {
//    if (typeof val === "string") {
//      return val;
//    } else if (val.toString) {
//      return val.toString();
//    } else {
//      return "no string representation available";
//    }
//  },
//};
type ObjectFunction = {
  val: (val: any) => string;
};
const objectMethod: ObjectFunction = {
  val: (val: any): string => {
    if (typeof val === "string") {
      return val;
    } else if (val.toString) {
      return val.toString();
    } else {
      return "no string representation available";
    }
  },
};
class ClassA {
  name: string;
  className: string;
  constructor(name: string, className: string) {
    this.name = name;
    this.className = className;
  }
}
class ClassB extends ClassA {
  idNumber: number;
  constructor(name: string, className: string, idNumber: number) {
    super(name, className);
    this.idNumber = idNumber;
  }
}

type Comparer<T> = {
  compare: (a: T, b: T) => number;
};
type ClassAComparer = Comparer<ClassA>;
type ClassBComparer = Comparer<ClassB>;

let classAComparer: ClassAComparer = {
  compare: (a: ClassA, b: ClassA): number => {
    if (a.name < b.name) {
      return -1;
    } else if (a.name > b.name) {
      return 1;
    } else {
      return 0;
    }
  },
};

let classBComparer: ClassBComparer = {
  compare: (a: ClassB, b: ClassB): number => {
    if (a.idNumber < b.idNumber) {
      return -1;
    } else if (a.idNumber > b.idNumber) {
      return 1;
    } else {
      return 0;
    }
  },
};
let classAVar = new ClassA("Alex", "12th");
let classBVar: ClassB = new ClassB("Alex", "12th", 1234);
classAVar = classBVar;

function takesClassB(a: ClassB) {
  console.log(a.className);
  console.log(a.name);
  console.log(a.idNumber);
}
//takesClassB(classAVar);
function varianceCheck(a: ClassA) {
  console.log(a.className);
  console.log(a.name);
}
varianceCheck(new ClassA("Alex", "12th"));

varianceCheck(new ClassB("Alex", "12th", 1234));
//classAComparer.compare = classBComparer.compare;
classBComparer.compare = classAComparer.compare;
// A base type

// A base type

type Student = {
  name: string;
  class: string;
  section: string;
  // The 'this' parameter goes first. It's erased at compile time.
  studentDetails: (this: Student, nickName: string) => string;
};

let studentTwo: Student = {
  name: "Martin",
  class: "12th",
  section: "A",

  // You still implement it normally
  studentDetails: function (this: Student, nickName: string): string {
    return this.name + " " + this.class + " " + this.section + " " + nickName;
  },
};

// VALID:
print(studentTwo.studentDetails("Alex"));

//print(newDf("Alex"));
//print(invDf(studentTwo, "Alex"));

// Object creation
let student = {
  name: "Martin",
  class: "12th",
  section: "A",

  studentDetails: function () {
    return this.name + " " + this.class + " " + this.section + " ";
  },
};
//type StructCtor = {
//  (val: any): any;
//};
//const objectTypeMethod: ObjectTypeMethod = {
//  makeObject(val: any) {
//    return val;
//  },
//};
