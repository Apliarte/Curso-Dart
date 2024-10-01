/*
Haz un programa que te pida dos números,
 use una función suma para devolver el resultado
 y si es escrito en español que devuelva el resultado en español*/
import 'dart:io';
//separar funciones en archivos

main() {
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

List<String> dividirCadenaPorCaracter(String cadena, String caracter) {
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

  if (comas > 1) {
    return false;
  }

  return true;
}

bool esUnNumeroEnteroValido(String numero) {
  
  
  for (int i = 0; i < numero.length; i++) {
    bool esNumero = false;
    for (int j = 0; j < 10; j++) {
      if (numero[i] == j.toString()) {
        break;
      }
    }
    if (!esNumero) {
      return false;
    }
  }

  return true;
}



bool validIntNum(String cadena) {
  List<String> charset = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  for (int i = 0; i < cadena.length; i++) {
    bool encontrado = false;
    for (int c = 0; c < charset.length; c++) {
      if (cadena[i] == charset[c]) {
        encontrado = true;
      }
    }
    if (!encontrado) {
      return false;
    }
  }
  return true;
}

bool validIntNum1(String cadena) {
  for (int i = 0; i < cadena.length; i++) {
    if (cadena[i] != '0' &&
        cadena[i] != '1' &&
        cadena[i] != '2' &&
        cadena[i] != '3' &&
        cadena[i] != '4' &&
        cadena[i] != '5' &&
        cadena[i] != '6' &&
        cadena[i] != '7' &&
        cadena[i] != '8' &&
        cadena[i] != '9') {
      return false;
    }
  }
  return true;
}

bool validarParteDecimal(String texto) {
  return true;
}

bool isValidInput(String input) {
  String caracteres_validos = '0123456789.,';
  for (int i = 0; i < input.length; i++) {
    if (!caracteres_validos.contains(input[i])) {
      return false;
    }
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
