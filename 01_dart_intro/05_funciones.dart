void main() {
  final int a = 10;
  final int b = 20;
  print(sumar(a, b));
  print(sumarFleha(a, b));
  print(sumarOptional(a));
  print(sumarOptional(a, b));
  print(saludar(nombre: 'Eimar'));
  print(saludar(nombre: 'Eimar', mensaje: 'Buenos dias'));
}

int sumar(int a, int b) {
  return a + b;
}

int sumarFleha(int a, int b) => a + b;

int sumarOptional(int a, [int b = 0]) {
  return a + b;
}

String saludar({required String nombre, String mensaje = 'Hola'}) {
  return '$mensaje $nombre';
}
