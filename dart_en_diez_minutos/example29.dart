// Ejercicio 29
// En este ejercicio, se muestra cómo se pueden utilizar las funciones anónimas en Dart.
// Aquí, se declara una función anónima que suma dos números y se la asigna a la variable `add`.

void example29() {
  var add = (a, b) {
    return a + b;
  };
  print("Example29 anonymous function '${add(1, 2)}'");
}

void main() {
  example29();
}