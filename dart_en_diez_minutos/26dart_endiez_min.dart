// Ejercicio 25
// En este ejercicio, se muestra cómo se puede utilizar un atajo para establecer los parámetros del constructor en Dart.
// Aquí, la clase `Example25` utiliza el prefijo `this.parameterName` para establecer los parámetros en las variables de instancia de mismo nombre.

class Example25 {
  var value, anotherValue;
  Example25({this.value, this.anotherValue});
}

void example25() {
  var o = new Example25(value: "a", anotherValue: "b");
  print("Example25 shortcut for constructor '${o.value}' and "
      "'${o.anotherValue}'");
}

void main() {
  example25();
}