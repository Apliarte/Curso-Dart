/*
Haz un programa que te pida dos números,
 use una función suma para devolver el resultado
 y si es escrito en español que devuelva el resultado en español*/
import 'dart:io';

main() {
  print(rompeCadena('hola, , mundo', ','));
  print(rompeCadena('hola,,mundo', ','));

  String r_num1 = '';
  do {
    print('Introduce un número: ');
    r_num1 = getUserInput();
    if (r_num1 == '') {
      print('El número no es válido');
    }
  } while (r_num1 == '');

  print('El numero es el $r_num1');
}

int cuentaCaracter(String cadena, String caracter) {
  int n = 0;
  for (int i = 0; i < cadena.length; i++) {
    if (cadena[i] == caracter) {
      n++;
    }
  }
  return n;
}

List<String> rompeCadena(String cadena, String caracter) {
  List<String> cadenas = [];
  String partesLista = '';
  for (int i = 0; i < cadena.length; i++) {
    if (cadena[i] != caracter) {
      partesLista += cadena[i];
    } else {
      if (partesLista != '') {
        cadenas += [partesLista];
      }
      partesLista = '';
    }
  }
  if (partesLista != '') {
    cadenas += [partesLista];
  }
  return cadenas;
}

bool isValidSpanishNumber(String r_num) {
  int comas = cuentaCaracter(r_num, ',');
  List numcondecimal = [];
  if (comas > 1) {
    return false;
  }
  if (comas == 1) {}
  return true;
}

bool isValidInput(String input) {
  String caracteres_validos = '0123456789.,';
  for (int i = 0; i < input.length; i++) {
    if (!caracteres_validos.contains(input[i])) {
      return false;
    }
    ;
  }
  return true;
}

String getUserInput() {
  String texto = stdin.readLineSync() ?? '';
  if (!isValidInput(texto)) {
    return '';
  }
  if (!isValidSpanishNumber(texto)) {
    return '';
  }
  return texto;
}
