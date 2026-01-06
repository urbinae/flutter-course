abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// Cambiamos 'abstract class' por 'mixin'
mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Rasgunador {
  void rasgunar() => print('Estoy rasguñando');
}

// Ahora sí puedes usar 'with'
class Delfin extends Mamifero with Nadador {}

class Gato extends Mamifero with Caminante, Rasgunador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Dove extends Ave with Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}



void main() {

  print('--- MIXINS ---');
  final flipper = Delfin();
  print(flipper is Animal ? 'Flipper es un Animal' : 'Flipper no es un Animal');
  print('Soy Flipper, un delfín:');
  flipper.nadar();

  final batman = Murcielago();
  print('Soy Batman, un murciélago:');
  batman.caminar();
  batman.volar();

  final ducky = Pato();
  print('Soy Ducky, un pato:');
  ducky.caminar();
  ducky.volar();
  ducky.nadar();

  final zeus = Gato();
  print('Soy Zeus, un gato:');
  zeus.caminar();
  zeus.rasgunar();
}