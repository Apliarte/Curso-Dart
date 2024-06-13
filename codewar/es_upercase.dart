/*¿Está la cadena en mayúsculas?
Tarea
Crea un método para ver si la cadena está en MAYÚSCULAS.
Ejemplos (input -> output)

"c" -> False
"C" -> True
"hello I AM DONALD" -> False
"HELLO I AM DONALD" -> True
"ACSKLDFJSgSKLDFJSKLDFJ" -> False
"ACSKLDFJSGSKLDFJSKLDFJ" -> True*/
bool isUpperCase(String str)=>str == str.toUpperCase()?true:false;

main() {
  print(isUpperCase('AAAAddAA'));
}
