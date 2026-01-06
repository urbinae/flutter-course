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

Stream<int> emitNumbers() async* {
  final numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    await Future.delayed(const Duration(seconds: 1));
    yield number;
  }

  
}