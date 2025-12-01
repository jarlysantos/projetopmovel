import '../domain/propriedade.dart';
import 'package:dio/dio.dart';

class PropriedadesApi {
  final dio= Dio();
  String baseUrl = 'https://my-json-server.typicode.com/criscds/fakelente';
  Future<List<Propriedade>> findAll() async {

    List<Propriedade> listaPropriedades = [];

    final response = await dio.get('$baseUrl/lentes');
    print(response);

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for (var json in result) {
        Propriedade propriedade = Propriedade.fromJson(json);
        listaPropriedades.add(propriedade);
      }
    }
    return listaPropriedades;
  }



}