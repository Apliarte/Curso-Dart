import 'dart:io';

const String SPANISH_NUMBER_CHARSET = '0123456789,.';
const String INT_NUMBER_CHARSET = '0123456789';

String getUserInput(
    String msg, List<Function(String)> checks, String invalid_check) {
  String buffer = '';
  print(msg);
  do {
    buffer = stdin.readLineSync() ?? '';
    if (buffer == '') {
      print('Por favor, indica algún valor.');
    } else {
      for (Function check in checks) {
        if (!check(buffer)) {
          print(invalid_check);
          buffer = '';
        }
      }
    }
  } while (buffer == '');

  return buffer;
}

int length(dynamic cadena) {
  int n = 0;
  try {
    while (true) {
      cadena[n];
      n++;
    }
  } catch (e) {}
  return n;
}

List<String> stringToList(String cadena) {
  List<String> buffer = [];
  for (int i = 0; i < length(cadena); i++) {
    buffer += [cadena[i]];
  }
  return buffer;
}

bool strContains(String car, String cadena) {
  for (String c in stringToList(cadena)) {
    if (car == c) {
      return true;
    }
  }
  return false;
}

List<String> strSplit(String cad, String car) {
  List<String> cads = [];
  String buffer = '';
  for (String c in stringToList(cad)) {
    if (c == car) {
      if (buffer != '') {
        cads += [buffer];
        buffer = '';
      }
    } else {
      buffer += c;
    }
  }
  if (buffer != '') {
    cads += [buffer];
  }
  return cads;
}

bool validCharset(String cad, String charset) {
  if (length(cad) < 1) {
    return false;
  }
  for (String car in stringToList(cad)) {
    if (!strContains(car, charset)) {
      return false;
    }
    ;
  }
  return true;
}

int count_ocurrences(String car, String cad) {
  int n = 0;
  for (String c in stringToList(cad)) {
    if (car == c) {
      n++;
    }
  }
  return n;
}

bool isValidSpanishNumberCharset(String cad) {
  return validCharset(cad, SPANISH_NUMBER_CHARSET);
}

bool startWithNumber(String cad) {
  return !(cad[0] == ',' || cad[0] == '.');
}

bool endWithNumber(String cad) {
    print('EL valor del parametro es ${ cad }');
    return true;
}

bool less_than_two_comma(String cad) {
  return count_ocurrences(',', cad) < 2;
}

bool validDecimalPart(String cad) {
  List<String> parts = strSplit(cad, ',');
  if (length(strSplit(cad, ',')) < 2) {
    return true;
  }
  return validCharset(parts[1], INT_NUMBER_CHARSET);
}

bool validIntPart(String cad) {
  String intPart = strSplit(cad, ',')[0];
  List<String> intParts = strSplit(intPart, '.');
  if (length(intParts) == 1) {
    return true;
  } else {
    for (int i = 0; i < length(intParts); i++) {
      if (i == 0) {
        if (length(intParts[i]) > 3) {
          return false;
        }
      } else {
        if (length(intParts[i]) != 3) {
          return false;
        }
      }
    }
  }
  return true;
}

String demo() {
  String userInput = getUserInput(
      'Por favor, indica el primer número: ',
      [
        isValidSpanishNumberCharset,
        startWithNumber,
        endWithNumber,
        less_than_two_comma,
        validDecimalPart,
        validIntPart
      ],
      'El texto introducido no corresponde a un número válido en formato Español,\nInténtalo de nuevo.');
  return userInput;
}

void main() {
  //print('Calculadora');
  // Pedimos un numero
  String raw_num_1 = demo();
  print(raw_num_1);
  // Pedimos otro numero

  // Sumamos los dos numeros

  // Mostramos el resultado
}
