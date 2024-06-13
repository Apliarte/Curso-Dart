import 'dart:io';

factorial(int fac){
  int pasos=1;
  String resultado = '1';
  for(int i=2;i<=fac;i++){
    pasos*=i;
    resultado += ' x $i';
  }
  stdout.write('$resultado = $pasos');
}

main(){
  factorial(7);
}