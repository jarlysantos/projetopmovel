import 'package:dio/dio.dart';

class CatFactApi {
  final dio = Dio();
  String baseUrl = 'https://meowfacts.herokuapp.com';

  Future<CatFact> getCatFact() async {
    var result = await dio.get(baseUrl);

    if (result.statusCode == 200) {
      var json = result.data;
      CatFact catFact = CatFact.fromJson(json);
      return catFact;
    } else {
      throw Exception('Erro ao buscar fato do gato: ${result.statusCode}');
    }
  }
}

class CatFact {
  final List<dynamic> data;

  CatFact({required this.data});

  factory CatFact.fromJson(Map<String, dynamic> json) {
    return CatFact(data: json['data']);
  }
}
