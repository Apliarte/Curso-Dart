/*Ejercicio 8: Crea un mapa que represente a un país.
El mapa debe tener claves para nombre, población y continente.
Luego, actualiza la población del país.*/

Map pais={
  'Nombre':'España',
  'Población':'3b',
  'Continente':'Europa'
};

main(){
  pais.update('Población', (value) => '4b');
  print(pais);
}