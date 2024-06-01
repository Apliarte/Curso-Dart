// Ejercicio 32
// En este ejercicio, se muestra cómo se pueden utilizar las funciones recursivas en Dart.
// Aquí, se declara una función `factorial` que calcula el factorial de un número de forma recursiva.

int factorial(int n) {
  return n == 0 ? 1 : n * factorial(n - 1);
}

void example32() {
  print("Example32 recursive function '${factorial(5)}'");
}

void main() {
  example32();
}