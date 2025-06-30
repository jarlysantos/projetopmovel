import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Projetootica extends StatefulWidget {
  const Projetootica({super.key});

  @override
  State<Projetootica> createState() => _ProjetooticaState();
}

class _ProjetooticaState extends State<Projetootica> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Armação", style: TextStyle(fontSize: 20, color: Colors.blueAccent,)),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://cdn.awsli.com.br/600x700/637/637407/produto/152388234/5871bfde79.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Safira", style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent,)),
                    Text("Transparente"),
                    Text("RS : 400")
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://dcdn-us.mitiendanube.com/stores/002/122/492/products/armacao_chamber_gatinho_chique_nude_5-6b69e4277716bc8b8a16581690322343-1024-1024.jpeg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Safira"),
                    Text("Transparente"),
                    Text("RS : 400")
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://officina7.fbitsstatic.net/img/p/oculos-de-grau-prada-caramel-tortoise-pr-18wv-07r101-54-88965/279262.jpg?w=1200&h=960&v=no-change&qs=ignore',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Safira"),
                    Text("Transparente"),
                    Text("RS : 400")
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://images.tcdn.com.br/img/img_prod/877056/oculos_de_grau_original_cagliari_em_acetato_feminino_7866_15749_variacao_20259_2_009e3c0e973858a60a252a25d3ad4e4a.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Safira"),
                    Text("Transparente"),
                    Text("RS : 400")
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),

        ],
      ),
    );
  }
  
 

}


