class First {
  duplicateName() { }
}

class Second {
  duplicateName() { }
}

function outer() {
  function duplicateName() { }
  return duplicateName;
}

function café() { }

// Object methods are unsupported and will cause the object to emitted as a untyped object.
const methods = {
  "name with spaces"() { },
  "name-with-punctuation"() { },
};
