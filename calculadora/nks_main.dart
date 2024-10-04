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
          print('$buffer--- $invalid_check');
          buffer = '';
          break;
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

String strReplaceFor(String cad, String car, String rep) {
  String buffer = '';
  for (String c in stringToList(cad)) {
    buffer += c == car ? rep : c;
  }
  return buffer;
}

num spanishNumberStrToDartNumber(String cad) {
  cad = strReplaceFor(cad, '.', '');
  cad = strReplaceFor(cad, ',', '.');

  num d = num.tryParse(cad) ?? 0;

  return d;
}

// validaciones de numeros en formato español
bool isValidSpanishNumberCharset(String cad) {
  return validCharset(cad, SPANISH_NUMBER_CHARSET);
}

bool startWithNumber(String cad) {
  return !(cad[0] == ',' || cad[0] == '.');
}

bool endWithNumber(String cad) {
  return !(cad[length(cad) - 1] == ',' || cad[length(cad) - 1] == '.');
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
  // print('validIntPart');
  return true;
}

bool sinPuntosConsecutivos1(String cad) {
  bool punto = false;
  for (int i = 0; i < length(cad); i++) {
    if (punto == true && cad[i] == '.') {
      return false;
    }
    if (cad[i] == '.') {
      punto = true;
    } else {
      punto = false;
    }
  }
  return true;
}

bool sinPuntosConsecutivos(String cad) {
  for (int i = 0; i < length(cad) - 1; i++) {
    if (stringToList(cad)[i] == '.' && stringToList(cad)[i + 1] == '.') {
      print('${stringToList(cad)[i]} y ${stringToList(cad)[i++]}');
      return false;
    }
    print('${stringToList(cad)[i]} y ${stringToList(cad)[i++]}');
  }

  return true;
}

String getValidSpanishNumberStr(String ask) {
  String userInput = getUserInput(
      ask,
      [
        isValidSpanishNumberCharset,
        startWithNumber,
        endWithNumber,
        less_than_two_comma,
        validDecimalPart,
        validIntPart,
        sinPuntosConsecutivos1
      ],
      'El texto introducido no corresponde a un número válido en formato Español,\nInténtalo de nuevo.');
  return userInput;
}

String darNumberToSpanishNumber(num numeroDart) {
  return strReplaceFor('$numeroDart', '.', ',');
}

String enteroToSpanishNumber(int numeroEnter) {
// 22012 a 22.012

// cada tres caracteres de derecha a izquierda poner un punto
  for (int i = length('$numeroEnter')-1; i >= 0; i--) {
    while (i != null&& i-1 != null&& i-2 != null){
    
    
    
    
    };
  }
  return '';
}

String invertirCadena(String cad) {
  String cadenaInvertida = '';
  for (int i = length(cad)-1; i >=0; i--) {
    cadenaInvertida += cad[i];
  }
  return cadenaInvertida;
}

void main() {
  print('Calculadora');
  print(invertirCadena(invertirCadena('Apliarte')));
  /* // Pedimos un numero
  String raw_num_1 =
      getValidSpanishNumberStr('Por favor, indica el primer número: ');
  print(raw_num_1);
  // Pedimos otro numero
  String raw_num_2 =
      getValidSpanishNumberStr('Por favor, indica el segundo número: ');
  print(raw_num_2);
  // traducir a dart las cadenas
  num num_1 = spanishNumberStrToDartNumber(raw_num_1);
  num num_2 = spanishNumberStrToDartNumber(raw_num_2);

  print('''los numeros son los numeros escritos en español 
y traducidos a dart:  $num_1 y $num_2''');
  print('el resultado es ${num_1 + num_2}');
  // Sumamos los dos numeros
 */
  // Mostramos el resultado
}
