import 'package:dio/dio.dart';
import '../domain/place.dart';

class PlacesService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.radar.io/v1',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'prj_test_pk_b14c56a7b4ce73cd285d33624eff4dc5fb1c183c',
      },
    ),
  );

  Future<List<Place>> fetchPlaces({
    required double latitude,
    required double longitude,
    String categories = 'gas-station',
  }) async {
    try {
      final response = await _dio.get(
        '/search/places',
        queryParameters: {
          'categories': categories,
          'near': '$latitude,$longitude',
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final List placesList = data['places'] ?? [];

        return placesList.map((e) => Place.fromJson(e)).toList();
      } else {
        throw Exception('Erro no servidor: ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Tempo de conexão esgotado');
      } else if (e.response != null) {
        throw Exception('Erro da API: ${e.response?.data}');
      } else {
        throw Exception('Erro desconhecido: ${e.message}');
      }
    } catch (e) {
      throw Exception('Erro inesperado: $e');
    }
  }
}
