// Ejercicio 36
// En este ejercicio, se muestra cómo se pueden utilizar las colas en Dart.
// Aquí, se declara una cola de números y se realizan varias operaciones con ella.

import 'dart:collection';

void example36() {
  var queue = Queue.of([1, 2, 3, 4, 5]);
  print("Example36 queue '${queue}'");
  queue.add(6);
  print("Example36 queue after add '${queue}'");
  queue.removeFirst();
  print("Example36 queue after removeFirst '${queue}'");
  print("Example36 queue length '${queue.length}'");
}

void main() {
  example36();
}