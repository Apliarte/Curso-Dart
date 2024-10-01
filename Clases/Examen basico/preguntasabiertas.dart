/*
6. **Define una clase `Coche` en Dart con las propiedades `marca`, `modelo` y `año`. Incluye un constructor para inicializar estas propiedades.**

7. **Explica la diferencia entre una clase abstracta y una interfaz en Dart. Proporciona un ejemplo de cada una.**

8. **Escribe una clase `Animal` con un método `hacerSonido()`. Luego, crea una clase `Perro` que herede de `Animal` e implemente el método `hacerSonido()` para que imprima "Guau".**

9. **¿Qué es un método estático en Dart? Escribe un ejemplo de una clase con un método estático.**

10. **Describe cómo se puede utilizar la palabra clave `super` en Dart. Proporciona un ejemplo donde una clase hija llame a un método de la clase padre utilizando `super`.**

---*/
class Volador {
  void volar()       {}

}

class Pajaro implements Volador {
  @override
  void volar() {
    print('El pájaro está volando');
  }
}

void main() {
  Volador volador = Volador();
  Pajaro pajaro = Pajaro();
  pajaro.volar();
}