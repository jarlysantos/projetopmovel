import 'package:dio/dio.dart';

import '../domain/dog_dados.dart';

class DogApi {
  final dio = Dio();
  String baseUrl = 'https://random.dog/woof.json';

  Future<Dog?> getRandomDog() async {

    var result = await dio.get('$baseUrl/woof.json');

    if (result.statusCode == 200) {
    var json = result.data;
    Dog dog = Dog.fromJson(json);
    return dog;
    } else {
      return null;
    }
  }
}