/*Ejercicio 11: Crea un mapa que represente a un músico.
El mapa debe tener claves para nombre, edad y instrumento.
Luego, imprime cada uno de los valores del mapa.*/
Map musico={
  'nombre':'ApliArte',
   'edad':45,
  'instrumento':['Guitarra', 'Violín','Piano','Armónica']
};
main(){
  musico.forEach((key, value) {
    print('$key : $value');
  });
}