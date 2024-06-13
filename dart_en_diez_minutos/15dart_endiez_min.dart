// Ejercicio 14
// En este ejercicio, se muestra cómo se pueden utilizar expresiones booleanas en Dart.
// Aquí, se declaran varias variables booleanas y se muestran algunas de las reglas de conversión implícita y dinámica de tipos.

void example14() {
  var a = true;
  if (a) {
    print("true, a is $a");
  }
  a = false;
  if (a) {
    print("true, a is $a");
  } else {
    print("false, a is $a"); /// runs here
  }
  // dynamic typed null can not be convert to bool
  var b; /// b is dynamic type
  b = "abc";
  try {
    if (b) {
      print("true, b is $b");
    } else {
      print("false, b is $b");
    }
  } catch (e) {
    print("error, b is $b"); /// this could be run but got error
  }
  b = null;
  // if (b) { /// Failed assertion: boolean expression must not be null)
  //   print("true, b is $b");
  // } else {
  //   print("false, b is $b");
  // }
}

void main() {
  example14();
}