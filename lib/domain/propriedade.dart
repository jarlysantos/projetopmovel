import 'dart:ffi';

class Propriedade {
  String urlImage;
  String nome;
  double valor;
  String parcelamento;
  double avaliacao;

  Propriedade({
    required this.urlImage,
    required this.nome,
    required this.valor,
    required this.parcelamento,
    required this.avaliacao,
  });

  factory Propriedade.fromJson(Map<String, dynamic> json) {
    double avaDouble = json['avaliacao'] is int
        ? json['avaliacao'].toDouble()
        : json['avaliacao'];

    double valDouble = json['valor'] is int
        ? json['valor'].toDouble()
        : json['valor'];

    return Propriedade(
      urlImage: json['urlImage'] ?? '',
      nome: json['nome'] ?? '',
      valor: valDouble,
      parcelamento: json['parcelamento'] ?? '',
      avaliacao: avaDouble,
    );
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'urlImage': urlImage,
      'nome': nome,
      'valor': valor,
      'parcelamento': parcelamento,
      'avaliacao': avaliacao,
    };
  }
}
