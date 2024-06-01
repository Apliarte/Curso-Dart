// Importamos las bibliotecas de Dart 'collection' y 'math'
// import "dart:collection";
// import "dart:math" as math;

// En Dart, todo es un objeto.
// Cada declaración de un objeto es una instancia de Null y
// Null también es un objeto.

// Hay 3 tipos de comentarios en Dart
// Comentario de una sola línea
/**
 * Comentario de varias líneas
 * Puede comentar varias líneas
 */
/// Comentario de documentación de código
/// Utiliza la sintaxis de markdown para generar documentación de código al crear una API.
/// Se recomienda el comentario de documentación de código al documentar tus APIs, clases y métodos.

// Hay 4 tipos de declaración de variables.
// Las constantes son variables que son inmutables, no pueden ser cambiadas o alteradas.
// `const` en Dart debe practicar la declaración de nombres en SCREAMING_SNAKE_CASE.
const CONSTANT_VALUE = "NO PUEDO CAMBIAR";
// CONSTANT_VALUE = "¿LO HICE?"; // Esto dará un error

// Final es otra declaración de variable que no puede cambiar una vez que ha sido instanciada. Comúnmente se usa en clases y funciones
// `final` puede ser declarado en pascalCase.
final finalValue = "el valor no puede cambiar una vez instanciado";
// finalValue = "Parece que no"; // Esto dará un error

// `var` es otra declaración de variable que es mutable y puede cambiar su valor. Dart inferirá los tipos y no cambiará su tipo de datos
// String mutableValue = "Variable string";
// mutableValue = "Variable string cambiada";
// mutableValue = false; // Esto dará un error.
var hola = 'esto es un string';
  // Usando comillas simples correctamente

/*`dynamic` es otra declaración de variable en la que el tipo no es evaluado por la comprobación de tipo estático de Dart.
Puede cambiar su valor y tipo de datos.
Algunos dartisans usan dynamic con precaución ya que no puede hacer un seguimiento de su tipo de datos. Así que úsalo bajo tu propio riesgo*/
dynamic dynamicValue = "Soy un string";
 // Esto es válido
main() { hola = 'dddd';
 dynamicValue = false;
  print("Hello, World!");
  print(hola);
  print(dynamicValue);
}
/*
Las funciones pueden ser declaradas en un espacio global
La declaración de funciones y la declaración de métodos se ven igual. Las declaraciones de funciones pueden ser anidadas. La declaración toma la forma de
nombre() {} o nombre() => expresiónDeUnaSolaLínea;
La declaración de función de flecha gorda puede ser un retorno implícito o
explícito para el resultado de la expresión.
Dart ejecutará una función llamada `main()` en cualquier lugar del proyecto Dart.
*/
