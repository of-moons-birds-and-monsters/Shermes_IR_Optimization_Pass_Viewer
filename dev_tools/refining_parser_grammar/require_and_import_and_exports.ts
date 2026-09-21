var x0 = $SHBuiltin.moduleFactory(0, function (global, require) {
  return 7;
})(undefined, undefined);

// export generates no code.
function foo() {
  var x = 7;
  $SHBuiltin.export("x", x);
  return x;
}

// import reduces to third argument.
var x1 = $SHBuiltin.import(100, "x", x0);
$SHBuiltin.moduleFactory(2001, function (global, require) {
  var z = "xyz";
  $SHBuiltin.export("z", z);
});

type CJSExport_0 = { bar: () => number; fooBar: (val: number) => number };
type CJSExport_1 = { x: number };

type ExportsObject = { exports: CJSExport_0 | CJSExport_1 };
//var modResults = new Array<ExportsObject>();
var modResults: any[] = new Array<any>();

//type ZeroType = 0;
//type RequireReturn<T> = T extends 0
//  ? CJSExport_0
//  : T extends 1
//    ? CJSExport_1
//    : undefined;
function require(modIdx) {
  "noinline";
  print("require");
  var modBefore: any = modResults[modIdx];
  print("modBefore");
  if (modBefore) return modBefore.exports;
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
          function fooBar(val: number) {
            return val + bar();
          }
          exports.bar = bar;
          exports.fooBar = fooBar;
        },
      )(undefined, require, mod, exports);
      modResults[modIdx] = mod;
      return mod.exports;
    }
    case 1: {
      $SHBuiltin.moduleFactory(
        1,
        function modFact1(global, require, module, exports) {
          print("modFact1");
          //type ObjectHolder = { x: number };
          // The first one of these should be a cache miss, the
          // second a cache hit.
          var x = {
            x: require(0).bar() + require(0).bar(),
          };
          exports.x = x;
        },
      )(undefined, require, mod, exports);
      print("assigning");
      modResults[modIdx] = mod;
      return mod.exports;
    }
    default:
  }
}
print("hello");
function outer(): number {
  "noinline";
  print("outer");
  const xObj: CJSExport_1 = require(1);

  print("xObj", xObj);
  const yObj: CJSExport_0 = require(0);
  return xObj.x * 2 + yObj.fooBar(6);
}

print(outer());
// CHECK-LABEL: 68
