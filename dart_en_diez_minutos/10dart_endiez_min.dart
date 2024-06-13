// Ejercicio 9
// En este ejercicio, se muestra cómo se pueden utilizar diferentes tipos de bucles en Dart.
// Aquí, se utiliza un bucle for, un bucle while, un bucle for-in y un bucle forEach para imprimir los elementos de una lista.

var example9Array = const ["a", "b"];

void example9() {
  for (int i = 0; i < example9Array.length; i++) {
    print("Example9 for loop '${example9Array[i]}'");
  }
  var i = 0;
  while (i < example9Array.length) {
    print("Example9 while loop '${example9Array[i]}'");
    i++;
  }
  for (final e in example9Array) {
    print("Example9 for-in loop '${e}'");
  }
  example9Array.forEach((e) => print("Example9 forEach loop '${e}'"));
}

void main() {
  example9();
}