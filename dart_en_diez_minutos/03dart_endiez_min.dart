// Ejercicio 2
// En este ejercicio, se muestra cómo se pueden usar funciones anónimas en Dart.
// Una función anónima es una función que no tiene un nombre.

void example2() {
  nested1(void Function() fn) {
    fn();
  }
  nested1(() => print("Example2 nested 1"));
}

void main() {
  example2();
}



/*
Este ejercicio muestra cómo se pueden usar funciones anónimas en Dart.
Una función anónima, también conocida como función lambda, es una función que no tiene un nombre.
Aquí está la explicación del código:
void example2() {...}: Esta es la definición de una función llamada example2. No toma ningún argumento y no devuelve ningún valor (void).
nested1(void Function() fn) {...}: Dentro de example2, se define otra función llamada nested1. Esta función toma un argumento fn, que se espera que sea una función que no toma argumentos y no devuelve ningún valor.
fn();: Dentro de nested1, se llama a la función fn que se pasó como argumento.
nested1(() => print("Example2 nested 1"));: Aquí se llama a nested1, pasándole una función anónima como argumento. Esta función anónima no toma ningún argumento y su cuerpo es print("Example2 nested 1"), que imprime una cadena en la consola.
void main() {...}: Esta es la función principal de Dart, que se ejecuta automáticamente cuando se ejecuta el programa. Dentro de main, se llama a example2.
En resumen, cuando se ejecuta este programa, se llama a example2, que a su vez llama a nested1, pasándole una función anónima que imprime una cadena. nested1 luego ejecuta esta función anónima, lo que resulta en la impresión de la cadena "Example2 nested 1".*/