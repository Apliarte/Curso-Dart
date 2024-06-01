// Ejercicio 34
// En este ejercicio, se muestra cómo se pueden utilizar los conjuntos en Dart.
// Aquí, se declara un conjunto de números y se realizan varias operaciones con él.

void example34() {
  var set = {1, 2, 3, 4, 5};
  print("Example34 set '${set}'");
  set.add(6);
  print("Example34 set after add '${set}'");
  set.remove(1);
  print("Example34 set after remove '${set}'");
  print("Example34 set length '${set.length}'");
}

void main() {
  example34();
}