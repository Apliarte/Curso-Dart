// Ejercicio 11
// En este ejercicio, se muestra cómo se pueden utilizar diferentes tipos de números en Dart.
// Aquí, se declaran varias variables de tipo int, double y num, y se muestran algunas de las reglas de asignación entre estos tipos.

void example11() {
  var i = 1 + 320, d = 3.2 + 0.01;
  final num myFinalNumDouble = 2.2;
  final num myFinalNumInt = 2;
  final int myFinalInt = 1;
  final double myFinalDouble = 0.1;
  num myNumDouble = 2.2;
  num myNumInt = 2;
  int? myInt = 1;
  double myDouble = 0; // Dart will add decimal prefix, becomes 0.0;
  // Here are some assignments and their validity
  myNumDouble = myFinalInt; // valid
  myNumDouble = myFinalDouble; // valid
  myNumDouble = myFinalNumInt; // valid
  myNumInt = myFinalInt; // valid
  myNumInt = myFinalDouble; // valid
  myNumInt = myFinalNumDouble; // valid
  // myInt = myNumDouble; // error
  // myInt = myFinalDouble; // error
  myInt = myFinalNumInt as int?; // valid
  // myDouble = myFinalInt; // error
  // myDouble = myFinalNumInt; // error
  myDouble = myFinalNumDouble.toDouble(); // valid
  print("Example11 int ${i}");
  print("Example11 double ${d}");
}

void main() {
  example11();
}