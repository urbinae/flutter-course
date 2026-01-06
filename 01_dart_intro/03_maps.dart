void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['una', 'dos', 'tres'],
    'sprites': {
      'normal': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
      'shiny': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png'
    }

  };
  print(pokemon);
  print(pokemon['name']);
  print(pokemon['sprites']['shiny']);

  
}
