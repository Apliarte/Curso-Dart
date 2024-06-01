// Ejercicio 44
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones assert en Dart.
// Aquí, se declara una declaración assert que verifica una condición.

void example44() {
  var a = 5;
  assert(a > 0, "Example44 assert statement 'a must be positive'");
}

void main() {
  example44();
}