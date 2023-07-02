void main() async{
  print('Inicio del programa');
  
  try{
    final value = await httpGet('http://elvis-loja.com/cursos');
    print('Exito: $value');
    
  }on Exception catch(error){
    print('Tenemos un Exception $error');
  } catch (error){
    print('Tenemos un error $error');
  }finally{
    print('Fin del try y cach');
  }
  
  print('Fin del programa');
  
}

Future<String> httpGet(String url) async{
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No existen parametros en el Url');
//   return 'Tenemos un valor de la peticion';
}