// Ejercicio 13
// En este ejercicio, se muestra cómo se pueden utilizar expresiones regulares en Dart.
// Aquí, se crea una expresión regular y se comprueba si coincide con dos cadenas diferentes.

void match(RegExp re, String s) {
  if (re.hasMatch(s)) {
    print("Example13 regexp matches '${s}'");
  } else {
    print("Example13 regexp doesn't match '${s}'");
  }
}

void example13() {
  var s1 = "some string", s2 = "some", re = new RegExp("^s.+?g");
  match(re, s1);
  match(re, s2);
}

void main() {
  example13();
}