void main() {
  final numbers = [1, 2, 3,3,3, 4, 5,5,5, 6, 7, 7, 7, 8, 9,9,9, 10];

  print('Original list: $numbers');
  print('tamaño: ${numbers.length}');
  print('Primer elemento: ${numbers.first}'); //validar estos casos
  print('Ultimo elemento: ${numbers.last}');
  print('Elemento en la posicion 3: ${numbers[3]}');
  print('Elemento en la posicion 3: ${numbers.elementAt(3)}');
  print('Elemento en la posicion 3: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Números como iterable: $reversedNumbers');
  print('Números invertidos como lista: ${reversedNumbers.toList()}');
  print('Números invertidos como conjunto/set: ${reversedNumbers.toSet()}');
  print('Números como conjunto/set: ${numbers.toSet()}');

  //numeros mayores que 5
  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });
  print('Números mayores que 5 como iterable: $numbersGreaterThan5');
  print('Números mayores que 5 como set: ${numbersGreaterThan5.toSet()}');
  print('Números mayores que 5 como lista: ${numbersGreaterThan5.toList()}');
}
