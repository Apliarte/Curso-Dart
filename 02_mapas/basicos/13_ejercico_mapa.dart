/*Ejercicio 13: Crea un mapa que represente a un equipo de fútbol.
El mapa debe tener claves para nombre, ciudad y estadio.
Luego, actualiza el nombre del estadio del equipo.*/
Map equipo={
  'nombre':'Submarino',
  'ciudad':'Cadiz',
  'estadio':'Bernabeu'

};
main(){
  print(equipo);
  equipo.update('estadio', (value) => 'Carranza');
  print(equipo);
}