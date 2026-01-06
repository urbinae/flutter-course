void main() {
  final Pokemon pikachu = Pokemon(name: 'Pikachu', power: 'Electricidad');
  print('El pokemon es ${pikachu.name} y su poder es ${pikachu.power}');
  final Pokemon bulbasaur = Pokemon(name: 'Bulbasaur');
  print('El pokemon es ${bulbasaur.name} y su poder es ${bulbasaur.power}');

  final Pokemon2 charmander = Pokemon2('Charmander', 'Fuego');
  print('El pokemon es ${charmander.name} y su poder es ${charmander.power}');

  final Person person = Person('Eimar', 28);
  print('La persona es ${person.name} y su edad es ${person.age}');

  print(person);

  final Heroe batman = Heroe(name: 'Batman', power: 'Dinero', isAlive: true);
  print(batman);

  final Map<String, dynamic> rawJson = {
    'name': 'Batman',
    'power': 'Dinero',
    'isAlive': true,
  };

  final Heroe batman2 = Heroe.fromJson(rawJson);
  print('Heroe desde json:');

  print(batman2);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  //sobre escribir
  @override
  String toString() {
    return '$name - $age';
  }
}

class Pokemon {
  String name;
  String power;

  Pokemon({required this.name, this.power = 'Normal'});
}

class Pokemon2 {
  String name;
  String power;

  Pokemon2(String pName, String pPower) : name = pName, power = pPower;
}

class Heroe {
  String name;
  String power;
  bool isAlive;

  Heroe({required this.name, required this.power, required this.isAlive});

  Heroe.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? 'No defined';

  @override
  String toString() {
    return '$name - $power - isAlive: ${isAlive ? 'Si' : 'No'}';
  }
}
