/*Cambiar letras La cadena de entrada puede
 tener una longitud arbitraria; en concreto,
  puede estar vacía. Se garantiza que toda
   la entrada es válida, es decir, que cada
    cadena de entrada sólo
estará formada por 'G', 'C', 'A' y/o 'T'.
y hay que cambiarla por u*/
String rnaToDna(String dna) => dna.replaceAll('T', 'U');

main() {
  print(rnaToDna('TUBERCULO'));
}
