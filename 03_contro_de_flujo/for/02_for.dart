/*
List<int> numeros = [5, 10, 15, 20, 25, 30]; int numeroBuscado = 20;
crea un bucle que recorra la lista imprimiendo cada número y cuando encuentre el número imprima "número encontrado" y salga del bucle
* */

List<int> numeros = [5, 10, 15, 20, 25, 30];
int numeroBuscado = 20;
main() {
  for (int i = 0; i < numeros.length; i++) {
    print(numeros[i]);
    if (numeros[i] == numeroBuscado) {

     print('numero encontrado, era el $numeroBuscado');

    }
  }
  print('hemos terminado');

}
