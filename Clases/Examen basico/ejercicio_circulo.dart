/* Ejercicio: Clase Círculo con Métodos de Cálculo

	?1.	Crea una clase llamada Circulo:
	?•	La clase debe tener una propiedad radio (de tipo double), la cual se asignará después de crear la instancia (por lo tanto, sin constructor).
	?2.	Define dos métodos en la clase Circulo:
	?•	Un método calcularArea() que devuelva el área del círculo usando la fórmula 3,14 radio*radio .
	?•	Un método calcularPerimetro() que devuelva el perímetro del círculo usando la fórmula  2 * 3,14 * radio .
  ?double area = pi * radio * radio;
  ?double perimetro = 2 * pi * radio;
	
 !1 El área de un círculo es pi por el radio al cuadrado ( A = π r² ).
 ! 3.	Prueba la clase:
	!•	Crea una instancia de Circulo.
	!•	Asigna un valor al radio.
	!•	Llama a ambos métodos y verifica que el área y el perímetro sean correctos. */
class Circulo {
  double pi = 3.14;
  double radio = 1.0;

  calcularArea() {
    return pi * radio * radio;
  }

  calculaPerimetro() {
    return 2 * pi * radio;
  }
}

void main() {
  Circulo circulo = Circulo();
double radio = 8;
  double perimetro = circulo.calculaPerimetro();
  double area = circulo.calcularArea();
  print('el Area de ${circulo.radio} = $area');
  print('el Perimetro de ${circulo.radio} = $perimetro');
}
