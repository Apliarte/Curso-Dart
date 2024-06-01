
/*Ejercicio 1: Crea un mapa que represente a un estudiante.
El mapa debe tener claves para nombre, edad y grado. Luego
, imprime cada uno de los valores del mapa.*/
void main() {
  Map<String,String> estudiante={
    'nombre':'Jose',
    'edad':'23',
    'año':'2024'

  };
  estudiante.forEach((key, value) {
    print('$key : $value');


  });
}