void main(){

  final stream = emitNumbers();

  stream.listen(
    (value) {
      print('Valor: $value');
    },
    onError: (error) {
      print('Error del stream: $error');
    },
    onDone: () {
      print('El stream ha finalizado');
    }
  );
}

emitNumbers(){
  
  return Stream<int>.periodic(
    const Duration(seconds: 1),
    (value) => value + 1
  ).take(5);
}