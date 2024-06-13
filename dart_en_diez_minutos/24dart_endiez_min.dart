// Ejercicio 23
// En este ejercicio, se muestra cómo se pueden utilizar los mixins de clases en Dart.
// Aquí, la clase `Example23B` utiliza el mixin `Example23Utils` para obtener el método `addTwo`.

class Example23A {}

mixin Example23Utils {
  addTwo(n1, n2) {
    return n1 + n2;
  }
}

class Example23B extends Example23A with Example23Utils {
  addThree(n1, n2, n3) {
    return addTwo(n1, n2) + n3;
  }
}

void example23() {
  var o = new Example23B(), r1 = o.addThree(1, 2, 3), r2 = o.addTwo(1, 2);
  print("Example23 addThree(1, 2, 3) results in '${r1}'");
  print("Example23 addTwo(1, 2) results in '${r2}'");
}

void main() {
  example23();
}