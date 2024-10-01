/*
Haz un programa que te pida dos números y use una función suma para devolver el resultado*/

import 'dart:io';

main() {
  num? x;
  num? y;

  do {
    print('Escribe un numero y pulsa enter');
    String entrada = stdin.readLineSync() ?? '';
    x = num.tryParse(entrada);
  } while (x == null);
  do {
    print('Escribe otro numero y pulsa enter');
    y = num.tryParse(stdin.readLineSync() ?? '');
  } while (y == null);

  num? b = sumar(x, y);

  print('El resultado de la suma es : $b');
}

sumar(num? x, num? y) {
  return x! + y!;
}
// 100.10.23.2,34.3

validSpanishNumber(String x) {
  bool contieneComa = x.contains(',');
  List separadosPorComa = x.split(',');
  bool contienePunto = separadosPorComa[0].contains('.');
  if (contieneComa) {

    if (separadosPorComa.length>2) {
      return null ;
    }else if (separadosPorComa[1]!=int) {
      return null ;
    }
  }

  if(contienePunto)  {
    

  }



  return num;
}
