import 'package:dio/dio.dart';
import 'package:projarly2/domain/acessorio.dart';

class AcessoriosApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/matheusmaciel123/fake-api-matheus';

  Future<List<Acessorio>> findAll() async {

    List<Acessorio> listaAcessorio = [];

    final response = await dio.get('$baseUrl/acessorios');
    print(response);

    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        Acessorio acessorio = Acessorio.fromJson(json);
        listaAcessorio.add(acessorio);
      }
    }
    return listaAcessorio;
  }
}