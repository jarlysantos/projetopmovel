import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';
import '../domain/propriedades.dart';
//import 'db_helper.dart';

class PropriedadesApi {
  final dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com./sasaam/fakeinfantil';

  Future<List<Propriedade>> ListarPropriedades() async {
  List<Propriedade> listaPropriedades = [];
  //Database db = await DBHelper().initDB();
  //String sql = 'SELECT * FROM PROPRIEDADE;';
  //var listResult = await db.rawQuery(sql);

  final response = await dio.get('$baseUrl/propertes');

  if(response.statusCode == 200){
    var listResult = response.data;
    print(listResult);
  for (var json in listResult) {
  Propriedade propriedade = Propriedade.fromJson(json);
  listaPropriedades.add(propriedade);
   }
  }

  await Future.delayed(Duration(seconds: 3));

  return listaPropriedades;

  }
}
