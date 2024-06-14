/*Dado un número n, devuelve el número de números impares
 positivos por debajo de n, ¡FÁCIL!

Ejemplos (Entrada -> Salida)
7 -> 3 (porque los números impares por debajo de 7 son [1, 3, 5])
15 -> 7 (porque los números impares por debajo de 15 son [1, 3, 5, 7, 9, 11, 13])
¡Espere entradas grandes!*/
// int oddCount(int n) => n ~/ 2;
int oddCount(int n) {
  int numeroDeIMparesANtes=0;

  for (int i=1;i<n;i++){
    if(i%2!=0){
      numeroDeIMparesANtes++;
    }
  }

  return numeroDeIMparesANtes;
}

main(){
print(oddCount(78));

}