/*
Haz un programa que te pida dos números,
 use una función suma para devolver el resultado
 y si es escrito en español que devuelva el resultado en español*/
import 'dart:io';

import 'enviadopor_whtsapp.dart';


const String SPANISH_NUMBER_CHARSET = '0123456789,.';
const String INT_NUMBER_CHARSET = '0123456789';
Map mapNumeros = {
  '0': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9
};
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
  } catch (e) {
   
  }
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
  //1000,20--->1000.2
  cad = strReplaceFor(cad, '.', '');
  cad = strReplaceFor(cad, ',', '.');

  return textoNumero(cad);
}

num parsearStringAnumero(String cad) {
  num numero = 0;
  for (int i = 0; i < length(cad); i++) {
    if (elMapaContieneElNum(cad[i], mapNumeros)) {
      numero += i;
    }
  }
  return numero;
}

bool elMapaContieneElNum(String car, Map mapaStrinNum) {
  for (int i = 0; i < length(mapaStrinNum); i++) {
    if (i == mapaStrinNum[car]) {
      return true;
    }
  }
  return false;
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
  } //12,12
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
      return false;
    }
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
  List numeroConComa = strSplit('$numeroDart', '.');

  if (length(numeroConComa) == 2) {
    String entero = '${numeroConComa[0]}';
    String decimal = '${numeroConComa[1]}';
    String enterocCOnPuntos = enteroToSpanishNumber(entero);
    return enterocCOnPuntos + ',' + decimal;
  }

  return enteroToSpanishNumber('$numeroDart');
}

String enteroToSpanishNumber(String numeroEnter) {
// 22012 a 22.012
  String buffer = '';
  String numAlReves = invertirCadena(numeroEnter);
  int separa = 0;
  for (int i = 0; i < length(numAlReves); i++) {
    if (separa == 3) {
      buffer += '.';
      separa = 0;
    }
    if (separa < 3) {
      buffer += numAlReves[i];
      separa++;
    }
  }

  return invertirCadena(buffer);
}

String invertirCadena(String cad) {
  String cadenaInvertida = '';
  for (int i = length(cad) - 1; i >= 0; i--) {
    cadenaInvertida += cad[i];
  }
  return cadenaInvertida;
}

void main() {
  
  print('Calculadora');

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
ya traducidos a dart:  $num_1 y $num_2''');

  // Sumamos los dos numeros
  num resultado = num_1 + num_2;

  print('resultado en dart $resultado');
  // Mostramos el resultado
  print('resultado en estañol ${darNumberToSpanishNumber(resultado)}');
// escribe !repo en el chat para ver
//el codigo completo del proyecto 'Curso Dart'
 
//¿ahora que hacemos codewar? COMENTA

  

}
