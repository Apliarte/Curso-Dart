/*Ejercicio 1: Condicional básico y bucle for
Instrucciones: Crea un programa que reciba un número y
 determine si es par o impar usando una estructura condicional. Además
, imprime los números del 1 al 10 utilizando un bucle for.*/

import 'dart:io';



main(){
print('escribe un número entero  para averiguar si es par o impar');
int? numero;
 do{
   stdout.write('Introduce un número: ');
    if (numero == null) {
numero = int.tryParse(stdin.readLineSync()!);
      print('Eso no era un numero, vuelve a intentarlo');
    }
  }while(numero == null);
 if(numero%2==0){
   print('Esee numero es par');
 }else{print('Ese número es impar');}





 for (int i=0;i<11;i++){
    print('$i');
  }
}