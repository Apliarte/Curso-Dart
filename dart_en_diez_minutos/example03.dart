// Ejercicio 3
// En este ejercicio, se muestra cómo se pueden declarar los parámetros de una función en Dart.
// Aquí, las funciones `planA` y `planB` toman una función como parámetro.

void example3() {
  planA(fn(String informSomething)) {
    fn("Example3 plan A");
  }
  planB(fn) {
    fn("Example3 plan B");
  }
  planA((s) => print(s));
  planB((s) => print(s));
}

void main() {
  example3();
}