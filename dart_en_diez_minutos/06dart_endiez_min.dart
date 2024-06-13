// Ejercicio 5
// En este ejercicio, se muestra cómo los métodos de una clase en Dart tienen acceso de cierre a las variables externas.
// Aquí, el método `sayIt` de la clase `Example5Class` tiene acceso a la variable `example5method` que se define fuera de la clase.

var example5method = "Example5 sayIt";

class Example5Class {
  sayIt() {
    print(example5method);
  }
}

void example5() {
  new Example5Class().sayIt();
}

void main() {
  example5();
}