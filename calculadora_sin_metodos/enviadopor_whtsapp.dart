import 'nks_main.dart';

const Map<String, int> mapaNums = {
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

int strLength(String input) {
  int n = 0;
  try {
    while (true) {
      input[n];
      n++;
    }
  } catch (e) {}
  return n;
}

List<String> strToList(String input) {
  List<String> output = [];
  for (int i = 0; i < strLength(input); i++) {
    output += [input[i]];
  }
  return output;
}

int strToInt(String input) {
  int n = 0;
  for (String str_n in strToList(input)) {
    n = n * 10 + mapaNums[str_n]!;
  }
  print('es un entero');
  return n;
}

double strToDecimal(String input) {
  //1234 ---> 0.1234
  double x = 0.0;

  x = x + strToInt(input);
  // sacamos la cantidad de ceros para dividir
  for (int i = 0; i < length(input); i++) {
    x = x / 10;
  }
  print('es un decimal');
  return x;
}

num textoNumero(String input) {
  int entero = 0;
  double decimal = 0;

  if (strContains('.', input)) {
    List listaInput = strSplit(input, '.');
    entero = strToInt(listaInput[0]);
    decimal = strToDecimal(listaInput[1]);
    return entero + decimal;
  } else {
    entero = strToInt(input);
    return entero;
  }
}

void main() {
  print(textoNumero('3457.89548'));
}
