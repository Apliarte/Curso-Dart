/*Escribe una función que acepte un número entero n
 y una cadena s como parámetros, y devuelva una cadena
  de s repetida exactamente n veces.

Ejemplos (input -> output)
6, "I"     -> "IIIIII"
5, "Hello" -> "HelloHelloHelloHelloHello"*/
String repeatString(int n, String s) =>s*n;
// String repeatString(int n, String s) {
//   String b='';
//   for(int i=1;i<=n;i++){
//     b+=s;
//   }
//   return b;
// }
main(){
  print(repeatString(7, 'ApliArte '));
}