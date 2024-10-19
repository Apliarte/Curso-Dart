import 'dart:math';

// ejercicio para ordenar y clasificar un campeonato de ajedrez
void main() {
  //Generar una lista de jugadores
  List<Jugador> jugadores = List.generate(
      10,
      (index) =>
          Jugador('Jugador${index + 1}', Jugador.generarNumerosAleatorios()));
  List<Jugador> jugadoresEmparejados = [];

  // Mostrar la lista de jugadores
  print('--- Jugadoes ---');
  jugadores.forEach((player) => print(player));
  print('---------------------------------------------');

  // Haga coincidir dos personas de la lista de capas y agréguelas a una nueva lista
  for (int i = 0; i < jugadores.length; i += 2) {
    if (i + 1 < jugadores.length) {
      Jugador player1 = jugadores[i];
      Jugador player2 = jugadores[i + 1];
      // Agregar 2 jugadores emparejados a la nueva lista
      jugadoresEmparejados.add(player1);
      jugadoresEmparejados.add(player2);
      // Aquí procesaremos un partido 1 contra 1 entre dos jugadores.

      print('${player1.name} contra ${player2.name}');
      print('${player1.name} Ganó');

      print('\nantes del partido:');
      print('${player1.name}: clasificación: ${player1.clasificacion}');
      print('${player2.name}: clasificación: ${player2.clasificacion}');
      // El jugador 1 gana contra el jugador 2.
      EloclasificacionSystem.updateclasificacions(player1, player2);

      print('\nDespués del partido:');
      print('${player1.name}: clasificación: ${player1.clasificacion}');
      print('${player2.name}: clasificación: ${player2.clasificacion}');
      print('---------------------------------------------');
    }
  }
}

class Jugador {
  String name;
  int clasificacion;

  Jugador(this.name, this.clasificacion);

  // Método para generar calificaciones aleatorias
  static int generarNumerosAleatorios() {
    Random aleatorio = Random();
    return aleatorio
        .nextInt(1000); // Genera números enteros aleatorios hasta 1000
  }

  // Método para expresar información del jugador como una cadena.
  @override
  String toString() {
    return 'Jugador: $name, clasificación: $clasificacion';
  }
}

class EloclasificacionSystem {
  static const int kFactor = 32;

  static double expectedScore(int clasificacion1, int clasificacion2) {
    return 1 / (1 + pow(10, ((clasificacion2 - clasificacion1) / 400)));
  }

  static void updateclasificacions(Jugador winner, Jugador perdedor) {
    double puntuacionEsperadaDelGanador =
        expectedScore(winner.clasificacion, perdedor.clasificacion);
    double expectedPerdedorScore =
        expectedScore(perdedor.clasificacion, winner.clasificacion);

    int winnerNewclasificacion =
        (winner.clasificacion + kFactor * (1 - puntuacionEsperadaDelGanador))
            .round();
    int perdedorNewclasificacion =
        (perdedor.clasificacion + kFactor * (0 - expectedPerdedorScore))
            .round();

    winner.clasificacion = winnerNewclasificacion;
    perdedor.clasificacion = perdedorNewclasificacion;
  }
}
