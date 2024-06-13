// Ejercicio 26
// En este ejercicio, se muestra cómo se pueden utilizar parámetros nombrados y opcionales en Dart.
// Aquí, la función `setConfig1` toma parámetros nombrados, mientras que la función `setConfig2` toma parámetros opcionales.

void example26() {
  var _name, _surname, _email;
  setConfig1({name, surname}) {
    _name = name;
    _surname = surname;
  }
  setConfig2(name, [surname, email]) {
    _name = name;
    _surname = surname;
    _email = email;
  }
  setConfig1(surname: "Doe", name: "John");
  print("Example26 name '${_name}', surname '${_surname}', "
      "email '${_email}'");
  setConfig2("Mary", "Jane");
  print("Example26 name '${_name}', surname '${_surname}', "
      "email '${_email}'");
}

void main() {
  example26();
}