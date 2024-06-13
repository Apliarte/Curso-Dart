/*
* Ejercicio 19: Crea un mapa que represente a una empresa.
* El mapa debe tener claves para nombre, industria y una lista de empleados.
* Cada empleado debe ser un mapa que tenga claves para nombre del empleado, puesto y salario.
* Luego, elimina a uno de los empleados de la lista de empleados
* *//**/
const String nombreEmpresa='Nombre Empresa';
const String industra='Industria';
const String  listaEmpleados='Lista de Empleados';
const String nombreEmpleado='Nombre Empleado';
const String puesto='Puesto';
const String salarioEmple='Salario Empleado';
Map empresa = {
  nombreEmpresa: 'ApliArte',
  industra: 'Aplicaciones Moviles',
  listaEmpleados: [
    {nombreEmpleado: 'Pepito',puesto: 'Desarrollador',salarioEmple: 1500},
    {nombreEmpleado: 'Jose',puesto: 'Gerente', salarioEmple: 3000}
  ]
};
despedir(String empleado) {


  for (int i = 0; i < empresa[listaEmpleados].length; i++) {
    if (empresa[listaEmpleados][i][nombreEmpleado] == empleado) {
      print('---------');
      print('---$listaEmpleados:----${empresa[listaEmpleados]}--');
      empresa[listaEmpleados].removeAt(i);
    }
  }
}

main() {
  print(empresa);
  despedir('Jose');
  print(empresa);
}
