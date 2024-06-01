/*Ejercicio 14: Crea un mapa que represente a un videojuego.
El mapa debe tener claves para nombre, desarrollador y año de lanzamiento.
Luego, elimina la entrada del año de lanzamiento del mapa.*/

Map videojuego={
  'nombre':'Ni idea',
  'desarrollador':'ApliArte',
  'año':2000
};
main(){
  print(videojuego);
  videojuego.remove('año');
  print(videojuego);
}