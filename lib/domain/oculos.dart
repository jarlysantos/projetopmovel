class Oculos{

   late String modelo;
   late String cor;
   late String preco;
   late String Imageurl;

Oculos({
   required this.modelo,
   required this.cor,
   required this.preco,
  required this.Imageurl,
});


   Oculos.fromJson(Map<String, dynamic> json){
   modelo = json ['modelo'];
   cor = json ['cor'];
   preco = json ['preco'];
   Imageurl = json ['imageUrl'];
}

   Map<String, dynamic> toJson(){
     final Map<String, dynamic> data = new Map<String, dynamic>();

     data['modelo'] = this.modelo;
     data ['cor'] = this.cor;
     data ['preco'] = this.preco;
     data['imageUrl'] = this.Imageurl;
     return data;
   }
}

