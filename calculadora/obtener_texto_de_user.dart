import 'dart:io';

List obtenerEntradas(int n) {
  int numDeEntradas = 0;
  List entradas = [];
  String entrada;
  do {
    print('Introduce el número ${numDeEntradas + 1}');
    entrada = stdin.readLineSync() ?? '';
    isValidSpanishNumber(entrada);
    entrada != null ? entradas += [entrada] : numDeEntradas--;
    numDeEntradas++;
  } while (numDeEntradas != n);
  for (int i = 0; i < entradas.length; i++) {
    print('El numero ${i + 1} introducido es el ${entradas[i].toString()} ');
  }
  return entradas;
}

bool isValidSpanishNumber(String r_num) {
  int comas = cuentaCaracter(r_num, ',');

  if (comas > 1) {
    return false;
  }
  return validIntNum(r_num);
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

bool validarParteDecimal(String texto) {
  return true;
}

bool contieneCaracter(String cadena, String caracter) {
  for (int i = 0; i < cadena.length; i++) {
    if (cadena[i] == caracter) {
      return true;
    }
  }
  return false;
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
