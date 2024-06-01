// Ejercicio 8
// En este ejercicio, se muestra cómo se pueden declarar y utilizar listas y mapas en Dart.
// Aquí, se declaran una lista y un mapa como constantes, y luego se imprimen sus valores.

const example8List = ["Example8 const array"];
const example8Map = {"someKey": "Example8 const map"};

void example8() {
  print(example8Map["someKey"]);
  print(example8List[0]);
}

void main() {
  example8();
}