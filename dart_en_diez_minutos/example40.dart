// Ejercicio 40
// En este ejercicio, se muestra cómo se pueden utilizar los bucles do-while en Dart.
// Aquí, se declara un bucle do-while que imprime los números del 1 al 5.

void example40() {
  var i = 1;
  do {
    print("Example40 do-while loop '${i}'");
    i++;
  } while (i <= 5);
}

void main() {
  example40();
}