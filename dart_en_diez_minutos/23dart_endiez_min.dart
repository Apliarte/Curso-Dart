// Ejercicio 22
// En este ejercicio, se muestra cómo se puede utilizar la herencia de clases en Dart.
// Aquí, la clase `Example22B` hereda de la clase `Example22A`.

class Example22A {
  var _name = "Some Name!";
  get name => _name;
}

class Example22B extends Example22A {}

void example22() {
  var o = new Example22B();
  print("Example22 class inheritance '${o.name}'");
}

void main() {
  example22();
}