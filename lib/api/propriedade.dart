import 'package:dio/dio.dart';

import '../model/user.dart';

class PropriedadesApi  {
  final dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/carolsantosss/apifake';

  Future<List<User>> findAll() async {
    List<User> listaUsuario = [];

    final response = await dio.get('$baseUrl/properties');

    if (response.statusCode == 200) {
      var listResult = response.data;
      print(listResult);
      for (var json in listResult) {
        User propriedade = User.fromJson(json);
        listaUsuario.add(propriedade);
      }
    }

    await Future.delayed(Duration(seconds: 3));

    return listaUsuario;
  }
}