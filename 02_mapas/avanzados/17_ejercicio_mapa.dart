/*Ejercicio 17: Crea un mapa que represente a una biblioteca.
El mapa debe tener claves para nombre, ubicación y una lista de libros.
Cada libro debe ser un mapa que tenga claves para título, autor y año de publicación.
Luego, añade un nuevo libro a la lista de libros.*/


Map biblioteca={
  'nombre':'Biblioteca Municipal',
  'Ubicación':'Calle de la Lectura',
  'Lista De Libros':[{
    'Nombre':'Los Contables',
    'Autor':'El Bola De Marbella',
    'Año':2012




  }]
};
main(){
  print(biblioteca);
  List listaLibros =biblioteca['Lista De Libros'];
  listaLibros.add({  'Nombre':'Los Jigos',
    'Autor':'El Bola De Marbella',
    'Año':2003});
  print('------');
 listaLibros.forEach((element) {
   print(element);
 });
}