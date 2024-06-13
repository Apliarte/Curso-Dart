/*Tabla de multiplicar: Escribe un programa que imprima la tabla de multiplicar del 7.*/

tablaMult(int numero){
for (int indice=0;indice<=10;indice++){
  print('$numero x $indice = ${numero * indice} ');

}

}

main(){
  tablaMult(7);
}