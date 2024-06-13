// Ejercicio 20
// En este ejercicio, se muestra cómo se puede utilizar la interpolación de cadenas en Dart.
// Aquí, se utiliza el carácter $ para interpolar el contenido de una variable en una cadena.

void example20(String s) {
  var s1 = '$s';
  var s2 = '$s';
  print("Example20 string interpolation ${s1} or ${s2} works.");
}

void main() {
  example20('Apli Arte');
}