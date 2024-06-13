/*
El método  Short, pero sin método
*/

metodoSrot(List<int> lista) {
  int elMenor = lista[0];
  for (int i = 1; i < lista.length; i++) {
    if (lista[i] < elMenor) {
      elMenor = lista[i];
    }
  }

  lista.remove(elMenor);
  lista.add(elMenor);


  return lista;
}

List<int> listaDada = [23, 4, 5, 15, 9, 24, 3];

main() {
  print(metodoSrot(listaDada));
  print(listaDada);
}
