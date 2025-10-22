import 'package:dio/dio.dart';

import '../domain/oculos.dart';

class PropriedadesApi {
  final dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/jarlysantos/fakeapi';

  Future<List<Oculos>> findAll() async {
    List<Oculos> listaOculos = [];
    // Database db = await DBHelper().initDB();
    // String sql = 'SELECT * FROM PROPRIEDADE;';
    // var listResult = await db.rawQuery(sql);

    final response = await dio.get('$baseUrl/properties');

    if (response.statusCode == 200) {
      var listResult = response.data;
      print(listResult);
      for (var json in listResult) {
        Oculos oculos = Oculos.fromJson(json);
        listaOculos.add(oculos);
      }
    }

    await Future.delayed(Duration(seconds: 3));

    return listaOculos;
  }
}