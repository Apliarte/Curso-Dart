// Ejercicio 21
// En este ejercicio, se muestra cómo se pueden utilizar los tipos opcionales en Dart para anotar las API y ayudar a los IDE a refactorizar, autocompletar y comprobar errores.

class Example21 {
  List<String> _names = [];
  Example21() {
    _names = ["a", "b"];
  }
  List<String> get names => _names;
  set names(List<String> list) {
    _names = list;
  }
  int get length => _names.length;
  void add(String name) {
    _names.add(name);
  }
}

void example21() {
  Example21 o = new Example21();
  o.add("c");
  print("Example21 names '${o.names}' and length '${o.length}'");
  o.names = ["d", "e"];
  print("Example21 names '${o.names}' and length '${o.length}'");
}

void main() {
  example21();
}