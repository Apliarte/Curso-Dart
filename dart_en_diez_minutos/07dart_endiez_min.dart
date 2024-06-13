// Ejercicio 6
// En este ejercicio, se muestra cómo se pueden declarar métodos y variables de instancia en una clase en Dart.
// Aquí, la clase `Example6Class` tiene una variable de instancia `instanceVariable` y un método `sayIt` que imprime el valor de `instanceVariable`.

class Example6Class {
  var instanceVariable = "Example6 instance variable";
  sayIt() {
    print(instanceVariable);
  }
}

void example6() {
  Example6Class().sayIt();
}

void main() {
  example6();
}