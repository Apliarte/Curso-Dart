/*Muy sencillo, dado un número (entero / decimal / ambos dependiendo del idioma), encuentra su opuesto (inverso aditivo).

Ejemplos:

1: -1
14: -14
-34: 34*/

num opposite(num n){
if(n>0){
 n=0-n;
  return n;
} else{ n=  n.abs();
  return n;
}
}
main(){

  print(opposite(78));}
