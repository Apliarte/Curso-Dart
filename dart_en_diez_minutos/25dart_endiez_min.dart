// Ejercicio 24
// En este ejercicio, se muestra cómo se pueden utilizar los constructores de clases en Dart.
// Aquí, la clase `Example24B` utiliza el constructor de la clase `Example24A` para establecer el valor de `color1`.

class Example24A {
  var _value;
  Example24A({value = "someValue"}) {
    _value = value;
  }
  get value => _value;
}

class Example24B extends Example24A {
  Example24B({value = "someOtherValue"}) : super(value: value);
}

void example24() {
  var o1 = new Example24B(), o2 = new Example24B(value: "evenMore");
  print("Example24 calling super during constructor '${o1.value}'");
  print("Example24 calling super during constructor '${o2.value}'");
}

void main() {
  example24();
}