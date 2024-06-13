/*
El método  Short, pero sin método
*/

metodoSrot(List <int>lista) {
  List <int>listaOperadora = lista;
  List<int> listaordenada = [];

  while (listaOperadora.isNotEmpty) {
    int elMenor = listaOperadora[0];
    for (int i = 1; i < listaOperadora.length; i++) {
      if (listaOperadora[i] < elMenor) {
        elMenor = listaOperadora[i];
      }
    }

    listaordenada.add(elMenor);
    listaOperadora.remove(elMenor);
  }
  lista = listaordenada;
  return lista;
}

List<int> listaDada = [23, 4, 5, 15, 9, 24, 3];

main() {
  print(metodoSrot(listaDada));
  print(listaDada);
}
