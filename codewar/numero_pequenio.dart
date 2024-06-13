/*Dada una matriz de números enteros,
su solución debe encontrar el número entero más pequeño.
Por ejemplo:
Dado [34, 15, 88, 2] su solución devolverá 2
Dado [34, -345, -1, 100] su solución devolverá -345
Puede suponer, para el propósito de este kata, que la matriz suministrada no estará vacía.*/

import 'dart:math';

List<int> arr = [2, 4, 5, 1, 9, 2, 3];

int findSmallestInt(List<int> arr) => arr.reduce(min);
main() {
  (arr..sort()).reversed;
  print(  (arr..sort()).reversed);

  print(arr);

}
