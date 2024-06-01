// Ejercicio 35
// En este ejercicio, se muestra cómo se pueden utilizar los mapas en Dart.
// Aquí, se declara un mapa de números a cadenas y se realizan varias operaciones con él.

void example35() {
  var map = {1: "one", 2: "two", 3: "three"};
  print("Example35 map '${map}'");
  map[4] = "four";
  print("Example35 map after add '${map}'");
  map.remove(1);
  print("Example35 map after remove '${map}'");
  print("Example35 map length '${map.length}'");
}

void main() {
  example35();
}