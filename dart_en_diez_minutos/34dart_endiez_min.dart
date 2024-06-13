// Ejercicio 33
// En este ejercicio, se muestra cómo se pueden utilizar las listas en Dart.
// Aquí, se declara una lista de números y se realizan varias operaciones con ella.

void example33() {
  var list = [1, 2, 3, 4, 5];
  print("Example33 list '${list}'");
  list.add(6);
  print("Example33 list after add '${list}'");
  list.removeAt(0);
  print("Example33 list after removeAt '${list}'");
  print("Example33 list length '${list.length}'");
}

void main() {
  example33();
}