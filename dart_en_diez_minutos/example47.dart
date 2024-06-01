// Ejercicio 47
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones rethrow en Dart.
// Aquí, se declara una declaración rethrow que vuelve a lanzar una excepción.

void example47() {
  try {
    throw Exception("An exception occurred");
  } catch(e) {
    print("Caught an exception: $e");
    rethrow;
  } catch(e) {
    print("Example47 rethrow statement 'Caught an exception: $e'");
  }
}

void main() {
  example47();
}