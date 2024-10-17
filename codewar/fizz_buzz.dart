//Title:FizzBuzz
// Author:ShivamVerma
// Email:shivamthegreat.sv@gmail.com

// Escribe un programa que imprima los números del 1 al 100. Pero para los múltiplos de tres imprime '$i es múltiplo de tres' en lugar del número
//y para los múltiplos de cinco imprime $i es múltiplo de 5. Para los números que son múltiplos de tres y de cinco imprime '$i es múltiplo de tres y de cinco'.

void main() {
  fizzBuzz();
}

void fizzBuzz() {
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("$i es múltiplo de 3 y 5");
    } else if (i % 3 == 0) {
      print("$i es múltiplo de 3");
    } else if (i % 5 == 0) {
      print("$i es múltiplo de 5");
    } else {
      print(i);
    }
  }
}
