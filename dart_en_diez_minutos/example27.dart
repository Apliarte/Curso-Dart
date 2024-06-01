// Ejercicio 27
// En este ejercicio, se muestra cómo se pueden utilizar variables declaradas con `final` en Dart.
// Aquí, se declara una clase `Example27` con dos variables `final`, `color1` y `color2`.

class Example27 {
  final color1, color2;
  Example27({this.color1, color2}) : color2 = color2;
}

void main() {
  var example27 = Example27(color1: 'red', color2: 'blue');
  print('Example27 color1: ${example27.color1}, color2: ${example27.color2}');
}