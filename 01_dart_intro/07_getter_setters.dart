void main(){
  final mySquare = Square(side: -15);
  
  mySquare.side = -10; // Esto lanzará una excepción
  print('Areaaa: ${mySquare.area}');
}

class Square {
  double _side;

  // Constructor
  Square({required double side})
      : assert(side >= 0, 'El lado no puede ser negativo'), 
      _side = side;

  // Getter
  double get area => _side * _side;

  // Setter
  set side(double value){
    print('Se va a asignar el valor $value al lado del cuadrado');
    if(value < 0) throw 'El lado no puede ser negativo';
    _side = value;
  }
}