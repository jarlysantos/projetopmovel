class Propriedade{
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
    return Propriedade(
      urlImage: json['urlImage'] ?? '',
      nome: json['nome'] ?? '',
      valor: json['valor'] ?? 0.0,
      parcelamento: json['parcelamento'] ?? '',
      avaliacao: json['avaliacao'] ?? 0.0 ,
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