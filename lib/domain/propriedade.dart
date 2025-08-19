
class Propriedade{
  String urlImage;
  String text;
  double valor;
  String parcelamento;
  double avaliacao;

  Propriedade({
    required this.urlImage,
    required this.text,
    required this.valor,
    required this.parcelamento,
    required this.avaliacao,
});

  factory Propriedade.fromJson(Map<String, dynamic> json) {
    return Propriedade(
      urlImage: json['urlImage'] ?? '',
      text: json['text'] ?? '',
      valor: json['valor'] ?? 0.0,
      parcelamento: json['parcelamento'] ?? '',
      avaliacao: json['avaliacao'] ?? 0.0 ,
    );
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'urlImage': urlImage,
      'text': text,
      'valor': valor,
      'parcelamento': parcelamento,
      'avaliacao': avaliacao,
    };
  }

}