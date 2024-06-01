// Ejercicio 30
// En este ejercicio, se muestra cómo se pueden utilizar las funciones de orden superior en Dart.
// Aquí, se declara una función `apply` que toma una función y dos números, y aplica la función a los números.

void example30() {
  var add = (a, b) => a + b;
  var apply = (f, a, b) => f(a, b);
  print("Example30 higher order function '${apply(add, 1, 2)}'");
}

void main() {
  example30();
}