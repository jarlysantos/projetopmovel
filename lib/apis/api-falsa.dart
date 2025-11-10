import 'package:dio/dio.dart';
import '../domain/propriedades.dart';

class PropriedadesApi {
  final Dio dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/sasaam/fakeinfantil';

  Future<List<Propriedade>> listarPropriedades() async {
    List<Propriedade> listaPropriedades = [];

    try {
      final response = await dio.get('$baseUrl/propriedades');

      if (response.statusCode == 200) {
        var listResult = response.data;
        print(listResult);

        for (var json in listResult) {
          Propriedade propriedade = Propriedade.fromJson(json);
          listaPropriedades.add(propriedade);
        }
      }
    } catch (e) {
      print('Erro ao buscar propriedades: $e');
    }

    await Future.delayed(Duration(seconds: 3));

    return listaPropriedades;
  }
}
