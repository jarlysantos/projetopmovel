class Acessorio{
  String urlImage;
  String nome;
  String valor;
  String parcelamento;

  Acessorio({
    required this.urlImage,
    required this.nome,
    required this.valor,
    required this.parcelamento,
  });

  factory Acessorio.fromJson(Map<String, dynamic> json) {
    return Acessorio(
      urlImage: json['urlImage'] ?? '',
      nome: json['nome'] ?? '',
      valor: json['valor'] ?? 0.0,
      parcelamento: json['parcelamento'] ?? '',
    );
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'urlImage': urlImage,
      'nome': nome,
      'valor': valor,
      'parcelamento': parcelamento,
    };
  }

}