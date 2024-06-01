// Ejercicio 45
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones throw en Dart.
// Aquí, se declara una declaración throw que lanza una excepción.

void example45() {
  try {
    throw Exception("Example45 throw statement 'An exception occurred'");
  } catch(e) {
    print("Caught an exception: $e");
  }
}

void main() {
  example45();
}