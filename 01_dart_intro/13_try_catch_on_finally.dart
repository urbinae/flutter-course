void main() async
{
  print('Antes');
  
  try {
    final value = await httpGet('https://api.escuelajs.co/api/v1/products');
    print(value);
  }  on Exception catch (er) {
    print('Tenemos un error de tipo Exception: $er');
  } catch (e) {
    print('Tenemos un error: $e');
  }
   finally {
    print('Finally: Esto se ejecuta siempre');
  }

  print('Final');
}

Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds: 1));
  // Simular un error
  //throw 'Error en la petición HTTP';
  throw Exception('Error en la petición HTTP, Falto la url');
}