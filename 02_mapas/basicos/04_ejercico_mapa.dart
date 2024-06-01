/*Ejercicio 4: Crea un mapa que represente a un coche.
El mapa debe tener claves para marca, modelo y año.
Luego, elimina la entrada del año del mapa.*/

main(){
Map coche={
  'marca':'Fiat',
  'Modelo':'Uno v60',
  'Año':1996
};
print(coche);
coche.remove('Año');
print(coche);
}