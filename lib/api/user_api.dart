import 'package:projarly2/model/user.dart';
import 'package:dio/dio.dart';
import '../model/user.dart';

class UserApi  {
  final dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/carolsantosss/apifake';

  Future<User?> login(String username, String password) async {
    List<User> listaUsers = await findAll();

    for (var user in listaUsers) {
      if (user.username == username && user.password == password) {
        return user;
      }
    }

    // throw Exception('Usuário não encontrado!');
    return null;
  }

  Future<List<User>> findAll() async {
    List<User> listaUsers = [];
    final response = await dio.get('$baseUrl/users');

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for (var json in result) {
        User user = User.fromJson(json);
        listaUsers.add(user);
      }
    }
    return listaUsers;
  }

  Future<User> findById(int id) async {
    final response = await dio.get('$baseUrl/users/$id');
    return User.fromJson(response.data);
  }
}