/*Ejercicio 10: Crea un mapa que represente a un artículo de una tienda.
El mapa debe tener claves para nombre, precio y cantidad en stock. Luego,
verifica si el artículo está en stock
comprobando si la cantidad en stock es mayor que 0.*/

Map articulo={
  'Nombre':'Colonia',
  'Precio':'89E',
  'Cantidad':56
};
main(){
  articulo['Cantidad']>0?print('Hay en stock'):print('No hay en stock');
}