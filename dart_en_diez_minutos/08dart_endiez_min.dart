// Ejercicio 7
// En este ejercicio, se muestra cómo se pueden declarar métodos y variables de clase en Dart usando la palabra clave "static".
// Aquí, la clase `Example7Class` tiene una variable de clase `classVariable` y dos métodos, `sayItFromClass` y `sayItFromInstance`, que imprimen el valor de `classVariable`.

class Example7Class {
  static var classVariable = "Example7 class variable";
  static sayItFromClass() {
    print(classVariable);
  }
  sayItFromInstance() {
    print(classVariable);
  }
}

void example7() {
  Example7Class.sayItFromClass();
  new Example7Class().sayItFromInstance();
}

void main() {
  example7();
}