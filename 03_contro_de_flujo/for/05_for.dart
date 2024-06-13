/*Números primos: Escribe un programa que imprima todos los números primos entre 1 y 100.
Un número primo es un número que solo tiene dos divisores: él mismo y 1.*/
import 'dart:io';
import 'dart:math';

numPrimos(int numero) {
  for (int i = 0; i <= numero; i++) {
    if (i == 0 || i == 1) {
      continue;
    }
    int contador = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        contador++;
      }
    }
    if (contador == 2) {
      stdout.write('$i ');
    }
  }
}
numPrimosRaiz(int numero){
  for (int i=2;i<=numero;i++){
    bool esPrimo = true;
    for (int j=2;j<=sqrt(i);j++){
      if (i%j==0){
        esPrimo = false;
        break;
      }
    }
    if (esPrimo){
      stdout.write('$i ');
    }
  }
}
main() {
  numPrimos(100);
  print('\n');
  numPrimosRaiz(100);
}
