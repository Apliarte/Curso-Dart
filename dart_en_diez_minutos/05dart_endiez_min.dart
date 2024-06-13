// Ejercicio 4
// En este ejercicio, se muestra cómo las funciones en Dart tienen acceso de cierre a las variables externas.
// Aquí, la función `nested1` tiene acceso a la variable `example4Something` que se define fuera de la función.

var example4Something = "Example4 nested 1";

void example4() {
  nested1(fn(informSomething)) {
    fn(example4Something);
  }
  nested1((s) => print(s));
}

void main() {
  example4();
}