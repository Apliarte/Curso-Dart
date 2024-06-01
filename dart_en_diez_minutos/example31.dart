// Ejercicio 31
// En este ejercicio, se muestra cómo se pueden utilizar las funciones de cierre en Dart.
// Aquí, se declara una función `makeAdder` que devuelve una función que suma un número específico a su argumento.

void example31() {
  var makeAdder = (n) => (m) => m + n;
  var add2 = makeAdder(2);
  print("Example31 closure function '${add2(3)}'");
}

void main() {
  example31();
}