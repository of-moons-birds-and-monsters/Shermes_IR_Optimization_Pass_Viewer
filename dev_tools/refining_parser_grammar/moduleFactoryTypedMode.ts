//(function () {
//  $SHBuiltin.moduleFactory(0, function (global, require, s: string): number {
//    return 7 + (s as any).length;
//  });
//  $SHBuiltin.moduleFactory(1, function (global, require): number {
//    var n: number = 100;
//    $SHBuiltin.export("n", n);
//    return 0;
//  });
//  $SHBuiltin.moduleFactory(2, function (global, require): number {
//    var n2: number = ($SHBuiltin.import(1, "n", "abc") as any).length + 2;
//    return 0;
//  });
//});
var modResults = new Array<any>();

function require(modIdx) {
  "noinline";
  var exports = {};
  var mod = { exports: exports };

  switch (modIdx) {
    case 0: {
      $SHBuiltin.moduleFactory(
        0,
        function modFact0(global, require, module, exports) {
          function bar(): number {
            return 17;
          }
          exports.bar = bar;
        },
      )(undefined, require, mod, exports);
      modResults[modIdx] = mod;
      return mod.exports;
    }
    case 1: {
      $SHBuiltin.moduleFactory(
        1,
        function modFact1(global, require, module, exports) {
          // The first one of these should be a cache miss, the
          // second a cache hit.
          var x = require(0).bar() + require(0).bar();
          exports.x = x;
        },
      )(undefined, require, mod, exports);
      modResults[modIdx] = mod;
      return mod.exports;
    }
    case 2: {
      $SHBuiltin.moduleFactory(
        1,
        function modFact1(global, require, module, exports) {
          // The first one of these should be a cache miss, the
          // second a cache hit.
          function addTwoNumbers(a: number, b: number): number {
            print(`arg a: ${a} b: ${b}`);
            print(typeof a);
            print(typeof b);

            return a + b;
          }
          exports.addTwoNumbers = addTwoNumbers;
        },
      )(undefined, require, mod, exports);
      modResults[modIdx] = mod;
      return mod.exports;
    }
    default:
  }
}
//var output = $SHBuiltin.moduleFactory(2, function (global, require) {
//  function exportFunc(a: number, b: number) {
//    return a + b;
//  }
//  return $SHBuiltin.export("exportFunc", exportFunc);
//  //return 0;
//});

function outer() {
  "noinline";
  return require(1).x * 2;
}

const reqRes = require(2);
const addTwoNumbers: (a: number, b: number) => number = reqRes.addTwoNumbers;
function alto(a: number, b: number): number {
  return a + b;
}
print(addTwoNumbers);
print(outer());
try {
  print(addTwoNumbers(5, 6));
} catch (e: any) {
  print("caught");
  print(e);
}
//const addFunction = $SHBuiltin.import(2, "exportFunc", output);
//print(addFunction);
//
//print(addFunction(1, 2));
////print(Object.keys(Object.getOwnPropertyDescriptors(exports)));
//print(exports[addFunction]);
//print(typeof addFunction);
//print(addFunction(1, 2));
