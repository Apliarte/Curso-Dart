/*Ejercicio 5: Crea un mapa que represente a un producto.
El mapa debe tener claves para nombre, precio y cantidad en stock.
Luego, verifica si el producto está en stock
comprobando si la cantidad en stock es mayor que 0.*/
Map producto = {'nombre': 'Manzana', 'Precio': '20', 'Cantidad': 45};

bool estaEnStock() {
  return producto['Cantidad']>0;
}

void main() {

  print(estaEnStock()?'No está en stock':'Está en stock');
}
