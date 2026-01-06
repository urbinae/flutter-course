void main()
{
  print('Antes');
  
  httpGet('https://api.example.com/data').then((data) {
    print(data);
  }).catchError((error) {
    print('Ocurrió un error: $error');
  }).whenComplete(() {
    print('Operación finalizada');
  });
  print('Final');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error en la petición HTTP';
  });
}