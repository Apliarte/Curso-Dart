// Ejercicio 46
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones finally en Dart.
// Aquí, se declara una declaración finally que se ejecuta después de un bloque try-catch.

void example46() {
  try {
    var a = 0;
    var b = 1 / a;
  } catch(e) {
    print("Caught an exception: $e");
  } finally {
    print("Example46 finally statement 'This is always executed'");
  }
}

void main() {
  example46();
}