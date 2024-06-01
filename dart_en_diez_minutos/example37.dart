// Ejercicio 37
// En este ejercicio, se muestra cómo se pueden utilizar las pilas en Dart.
// Aquí, se declara una pila de números y se realizan varias operaciones con ella.

import 'dart:collection';

void example37() {
  var stack = ListQueue<int>.of([1, 2, 3, 4, 5]);
  print("Example37 stack '${stack}'");
  stack.addLast(6);
  print("Example37 stack after push '${stack}'");
  stack.removeLast();
  print("Example37 stack after pop '${stack}'");
  print("Example37 stack length '${stack.length}'");
}

void main() {
  example37();
}