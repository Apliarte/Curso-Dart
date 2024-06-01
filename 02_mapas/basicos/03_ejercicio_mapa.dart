/*Ejercicio 3: Crea un mapa que represente a una ciudad.
El mapa debe tener claves para nombre, población y país.
Luego, actualiza la población de la ciudad.*/

void main() {
  Map ciudad = {
    'nombre': 'Marbella',
    'población': 50000,
    'Pais': 'España'};

  print(ciudad);
  ciudad.update('población', (value) => 40000);
  print(ciudad);
}
