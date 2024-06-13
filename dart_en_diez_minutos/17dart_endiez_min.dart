// Ejercicio 16
// En este ejercicio, se muestra cómo se pueden crear cadenas largas de manera eficiente en Dart.
// Aquí, se utiliza un StringBuffer para crear una cadena dinámicamente, y se une una lista de cadenas.

void example16() {
  var sb = new StringBuffer(), a = ["a", "b", "c", "d"], e;
  for (e in a) {
    sb.write(e);
  }
  print("Example16 dynamic string created with "
      "StringBuffer '${sb.toString()}'");
  print("Example16 join string array '${a.join()}'");
}

void main() {
  example16();
}