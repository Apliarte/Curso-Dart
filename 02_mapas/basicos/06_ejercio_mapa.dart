/*Ejercicio 6: Crea un mapa que represente a un animal.
El mapa debe tener claves para nombre, edad y especie.
Luego, imprime cada uno de los valores del mapa*/

Map animal={
  'Nombre':'Chiri',
  'Edad':2,
  'especie':'Perro'
};
main(){

  animal.forEach((key, value) {
    print('$key: $value');
  });
}