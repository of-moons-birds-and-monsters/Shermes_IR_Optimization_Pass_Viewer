function empty(): void {
  "noinline";
}

function alwaysThrows(): void {
  "noinline";
  throw Error("expected");
}

empty();

try {
  alwaysThrows();
} catch (e) { }
