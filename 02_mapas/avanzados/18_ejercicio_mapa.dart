/*
Ejercicio 18: Crea un mapa que represente a una ciudad.
El mapa debe tener claves para nombre, población, país y una lista de edificios.
Cada edificio debe ser un mapa que tenga claves para nombre del edificio, altura y año de construcción.
Luego, actualiza la altura de uno de los edificios
*/

Map ciudad = {
  'Nombre': 'Marbella',
  'Población': 'Málaga',
  'País': 'España',
  'Edificios': [
    {'Nombre del Edificio': 'Marbell Center', 'Altura': 40, 'Año': 1890},
    {'Nombre del Edificio': 'Torre Real', 'Altura': 40, 'Año': 1888},
  ]
};
modiValorLista(List lista, nomEdi, altura) {
  lista.forEach((map) {
    if (map['Nombre del Edificio'] == nomEdi) {

      map['Altura'] = altura;

    }
  });
}
main()  {
    mostarCiudad();
    print('Cambiamos el valor de la altura del edificio Marbell Center');
    modiValorLista(ciudad['Edificios'], 'Marbell Center', 30);
    mostarCiudad();
  }
mostarCiudad(){
  print('''Ciudad : ${ciudad['Nombre']}
  ''' );
  ciudad['Edificios'].forEach((map) {
    print(''' Nombre del edificio: ${map['Nombre del Edificio']} 
    Altura: ${map['Altura']}
    Año: ${map['Año']}
    ''');
  });
}
