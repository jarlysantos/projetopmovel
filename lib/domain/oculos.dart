class Oculos {
  late String nome;
  late String cor;
  late double preco;
  late String url;


  Oculos({
    required this.url,
    required this.preco,
    required this.nome,
    required this.cor,
  });

  Oculos.fromJson(Map<String, dynamic> json) {
    nome = json['nomeArmacao'];
    cor = json['cor'];
    preco = json['preco'];
    url = json['url'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();


    data['nomeArmacao'] = this.nome;
    data['cor'] = this.cor;
    data['preco'] = this.preco;
    data['url'] = this.url;


    return data;
  }
}

