/*Ejercicio 9: Crea un mapa que represente a un dispositivo electrónico.
El mapa debe tener claves para marca, modelo y año de lanzamiento.
Luego, elimina la entrada del año de lanzamiento del mapa.*/

Map dispos={
  'Marca':'Samsung',
  'Modelo':'Er56673',
  'Año de lanzamiento':2000
};
main(){
  dispos.remove('Año de lanzamiento');
  print(dispos);
}