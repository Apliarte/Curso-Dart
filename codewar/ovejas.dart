/*Si no puedes dormir, ¡¡¡cuenta ovejas!!!

Tarea:
Dado un número entero no negativo, 3 por ejemplo,
devuelve una cadena con un murmullo: "1 oveja...2 ovejas...3 ovejas...".
La entrada siempre será válida, es decir, sin enteros negativos.
"1 sheep...2 sheep...3 sheep..."
*/

String countSheep(numb) {
  List sheep = [];
  for (int i = 1; i <= numb; i++) {
    sheep.add('$i sheep...');
  }
  ;

  return sheep.join('').toString();
}

main() {
  print(countSheep(45));
}
