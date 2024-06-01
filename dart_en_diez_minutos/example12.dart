// Ejercicio 12
// En este ejercicio, se muestra cómo se pueden realizar operaciones con fechas en Dart.
// Aquí, se crea un objeto DateTime para la fecha y hora actuales, y luego se le suma un día.

void example12() {
  var now = new DateTime.now();
  print("Example12 now '${now}'");
  now = now.add(new Duration(days: 1));
  print("Example12 tomorrow '${now}'");
}

void main() {
  example12();
}