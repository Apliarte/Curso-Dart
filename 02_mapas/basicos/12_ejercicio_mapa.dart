/*Ejercicio 12: Crea un mapa que represente a una canción.
El mapa debe tener claves para título, artista y año de lanzamiento.
Luego, añade una nueva entrada al mapa para género.*/
Map cancion={
  'titulo':'Si la vida te da que hacer',
  'artista':'Apliarte Music',
  'año':2018
};
main(){
  cancion.addAll({'genero':'Salsa'});
  print(cancion);
}