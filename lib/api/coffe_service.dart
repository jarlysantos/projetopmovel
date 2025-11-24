import 'package:dio/dio.dart';
import '../domain/place.dart';

class CoffeeService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://coffee.alexflipnote.dev/random';

  Future<String> getRandomCoffeeImage() async {
    try {
      final result = await _dio.get(baseUrl);



      if (result.statusCode == 200) {

        return '$baseUrl?t=${DateTime.now().millisecondsSinceEpoch}';
      } else {
        throw Exception('Erro ao buscar imagem de café: ${result.statusCode}');
      }
    } catch (e) {
      throw Exception('Erro na requisição: $e');
    }
  }
}

