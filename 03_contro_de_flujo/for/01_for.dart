/*Suma de números impares: Escribe un programa que sume todos los números impares entre 1 y 100.*/

main(){int resultado=0;
  for(int i=1;i<100;i+=2){
    print(i);
    resultado+=i;
  }
print(resultado);
}