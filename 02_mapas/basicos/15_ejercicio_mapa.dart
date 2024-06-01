/*Ejercicio 15: Crea un mapa que represente a un producto de una tienda online. El
 mapa debe tener claves para nombre, precio y cantidad en stock. Luego
, verifica si el producto está en stock comprobando
si la cantidad en stock es mayor que 0.*/
Map producto={
  'nombre':'Pan',
  'precio':'2',
  'cantidad':'0',

};

main(){
  print('${int.tryParse(producto['cantidad']??'')!>0?'Hay en Stock':'No queda en stock'}');
}