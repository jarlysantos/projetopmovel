class Propriedade{

  late String imageUrl;
  late String modelo;
  late String cor;
  late String preco;


  Propriedade({

    required this.imageUrl,
    required this.modelo,
    required this.cor,
    required this.preco,

  });

  Propriedade.fromJson(Map<String , dynamic >json){
    imageUrl = json['imageUrl'];
    modelo = json ['modelo'];
    cor = json['cor'];
    preco = ['preco'] as String;

  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['preco'] = this.preco;
    data ['modelo'] = this.modelo;
    data ['cor'] = this.cor;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}