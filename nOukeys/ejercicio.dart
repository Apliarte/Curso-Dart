/*List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 Con un bucle for modifica la lista para doblar el valor de los elementos pares*/
List<int> numbers = [0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
main() {



  for (int i =1; i <= numbers.length; i++) {
    numbers.remove(i);
  }

  print(numbers);
}
