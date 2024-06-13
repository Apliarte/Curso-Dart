// Ejercicio 41
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones if en Dart.
// Aquí, se declara una declaración if que imprime si un número es par o impar.

void example41() {
  var number = 5;
  if (number % 2 == 0) {
    print("Example41 if statement 'The number is even'");
  } else {
    print("Example41 if statement 'The number is odd'");
  }
}

void main() {
  example41();
}