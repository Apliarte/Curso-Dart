/*Dado un mes como número entero de 1 a 12,
devuelve a qué trimestre del año pertenece como número entero.

Por ejemplo: el mes 2 (febrero),
pertenece al primer trimestre; el mes 6 (junio),
pertenece al segundo trimestre;
y el mes 11 (noviembre), pertenece al cuarto trimestre.*/
int quarter(int month) {
  Map anio = {
    1: [1, 2, 3],
    2: [4, 5, 6],
    3: [7, 8, 9],
    4: [10, 11, 12]
  };
  anio.forEach((key, value) {
    List meseTrimestre = anio[key];
  int  trime=key;

    meseTrimestre.forEach((element) {
      if (element == month) {
        month = trime;
      }
    });
 }); return month;
}

main() {
  print(quarter(5));
}
