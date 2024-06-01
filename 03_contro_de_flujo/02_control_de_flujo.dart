// your code here
/*Como Nathan sabe que es importante mantenerse hidratado,
  bebe 0,5 litros de agua por hora de pedaleo.
Te dan el tiempo en horas y tienes que devolver
el número de litros que beberá Nathan, redondeado al valor más pequeño.*/

/*int? litres(num time) {
  double litrosHora = time * 0.5;

  print('litors hora: $litrosHora');
  int? numeroSinDecimal = int.tryParse(litrosHora.toString().split('.')[0])??0;
  print('numero sin decimal : $numeroSinDecimal');
  List losDecimal = litrosHora.toString().split('.');
  String? primerDecimal = losDecimal.toString().split('').first.toString();

  print('primer decimal $primerDecimal');
  int? numero = int.tryParse(primerDecimal)??0;
  print(' numero: $numero');


    if (losDecimal.length > 1) {
      int? dosdecimal = int.tryParse('${losDecimal[0]}${losDecimal[1]}');
      if (dosdecimal! <= 50) {
        print(numeroSinDecimal);
        return numeroSinDecimal;
      } else {
        return numeroSinDecimal + 1;
      }
    }else if (numero==0) {
      return numeroSinDecimal + 1;
    }else
    if (numero< 5) {
      print(numeroSinDecimal);
      return numeroSinDecimal;
    }else{return numeroSinDecimal;}}*/


num litres(num time) =>time * 0.5.floor();


main() {
  print(litres(50));
}
