// Ejercicio 43
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones try-catch en Dart.
// Aquí, se declara una declaración try-catch que maneja una excepción.

void example43() {
  try {
    var a = 0;
    var b = 1 / a;
  } catch(e) {
    print("Example43 try-catch statement 'Caught an exception: $e'");
  }
}

void main() {
  example43();
}