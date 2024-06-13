// Ejercicio 42
// En este ejercicio, se muestra cómo se pueden utilizar las declaraciones switch en Dart.
// Aquí, se declara una declaración switch que imprime el nombre de un mes basado en su número.

void example42() {
  var month = 3;
  switch (month) {
    case 1:
      print("Example42 switch statement 'January'");
      break;
    case 2:
      print("Example42 switch statement 'February'");
      break;
    case 3:
      print("Example42 switch statement 'March'");
      break;
  // ... and so on for the rest of the months
    default:
      print("Example42 switch statement 'Invalid month'");
  }
}

void main() {
  example42();
}