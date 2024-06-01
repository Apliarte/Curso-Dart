// Ejercicio 10
// En este ejercicio, se muestra cómo se pueden recorrer los caracteres de una cadena o extraer una subcadena en Dart.
// Aquí, se utiliza un bucle for para imprimir cada carácter de una cadena y para imprimir una subcadena de la cadena.

var example10String = "ab";

void example10() {
  for (var i = 0; i < example10String.length; i++) {
    print("Example10 String character loop '${example10String[i]}'");
  }
  for (var i = 0; i < example10String.length; i++) {
    print("Example10 substring loop '${example10String.substring(i, i + 1)}'");
  }
}

void main() {
  example10();
}