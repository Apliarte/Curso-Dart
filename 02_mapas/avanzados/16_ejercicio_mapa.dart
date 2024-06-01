/*Ejercicio 16: Crea un mapa que represente a un estudiante.
El mapa debe tener claves para nombre, edad, grado y una lista de cursos.
Cada curso debe ser un mapa que tenga claves para nombre del curso, profesor y calificación.
Luego, imprime cada uno de los valores del mapa.*/
String nomCurso= 'Nombre Del Curso ';

Map estudiante = {
  'nombre': 'Pepito',
  'edad': 16,
  'grado': 'Medio',
  'cursos': [
    {
      nomCurso: 'Matematicas',
      'Profesor': 'Paco',
      'Calificación': 'Suspenso'
    },
    {
      nomCurso: 'Sociales',
      'Profesor': 'Andres',
      'Calificación': 'Sobresaliente'
    },
    {
      nomCurso: 'Naturaleza',
      'Profesor': 'Javier',
      'Calificación': 'Suficiente'
    },
    {nomCurso: 'Lenguaje',
      'Profesor': 'Ana',
      'Calificación': 'Notable'
    }
  ]
};
main() {
  estudiante.forEach((key, value) {
    if (value.runtimeType == List<Map<String, String>>) {
      print('     $key ');
      List cursos=value;
      for(int i=0;i< cursos.length;i++) {
        print('Curso ${i+1}');
        Map cursoIndi=value[i];
        cursoIndi.forEach((key, value) {
          print('       $key=> $value');
        });
      }
    } else {
      print('$key : $value');
    }
  });
}
