// Ejercicio 28
// En este ejercicio, se muestra cómo se pueden utilizar las funciones de flecha en Dart.
// Aquí, se declara una función de flecha `add` que suma dos números.

void example28() {
  var add = (a, b) => a + b;
  print("Example28 arrow function '${add(1, 2)}'");
}

void main() {
  example28();
}