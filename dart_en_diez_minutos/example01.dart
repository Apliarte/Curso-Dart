// Ejercicio 1
// En este ejercicio, se muestra cómo se pueden anidar funciones en Dart.

void example1() {
  nested1() {
    nested2() => print("Example1 nested 1 nested 2");
    nested2();
  }
  nested1();
}

void main() {
  example1();
}