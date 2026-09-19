function likelyInlined(value: number): number {
  return value + 1;
}

function unusedFunction(): number {
  return 42;
}

print(likelyInlined(5));
