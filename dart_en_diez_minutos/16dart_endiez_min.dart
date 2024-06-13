// Ejercicio 15
// En este ejercicio, se muestra cómo se pueden manejar excepciones en Dart.
// Aquí, se lanza una excepción, se captura y se vuelve a lanzar, y finalmente se captura de nuevo.

void example15() {
  try {
    try {
      throw "Some unexpected error.";
    } catch (e) {
      print("Example15 an exception: '${e}'");
      throw e; /// Re-throw
    }
  } catch (e) {
    print("Example15 catch exception being re-thrown: '${e}'");
  } finally {
    print("Example15 Still run finally");
  }
}

void main() {
  example15();
}