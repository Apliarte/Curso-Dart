/*
la suma de todos los múltiplos de 3 ó 5 por debajo del número introducido.
Además, si el número es negativo, devuelve 0.

Nota: Si el número es múltiplo de 3 y de 5, sólo se cuenta una vez.
*/
int solution(int n) {
  int multiplos =0;
  if (n < 0) {
    return multiplos;
  }

  for (int i = 3; i < n; i++) {
    if (i % 5 == 0||i % 3 == 0) {
      multiplos+=i;
    }
  }

  return multiplos;
}

main() {
  print(solution(3));
}
