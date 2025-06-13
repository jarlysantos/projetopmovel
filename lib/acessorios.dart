import 'package:flutter/material.dart';

class acessorios extends StatefulWidget {
  const acessorios({super.key});

  @override
  State<acessorios> createState() => _acessoriosState();
}

class _acessoriosState extends State<acessorios> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Acessórios',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),

          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
            // Cor da seta
          ),
        ),
        body: buildBody(),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          //Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //children: [
          //Text("Lentes", style: TextStyle(fontSize: 25, color: Colors.black,)),
          //],
          //),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://images.tcdn.com.br/img/img_prod/424358/flanela_de_microfibra_40x60cm_350gsm_vintex_50420511_1_bdd0a2d179d1cc0ad60e706ea0ad99f9_20240410095138.jpg", width: 250,),
                        Text("Flanela de microfibra")
                      ],
                    ),
                  ),// Imagem e legenda
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 25,90", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(" 2x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) // Preço, avaliação, produto
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/855/372/products/foss-801-986ebab3433aabbb3f16427268022044-1024-1024.jpg", width: 250,),
                        Text("Spray limpa-lentes")
                      ],
                    ),
                  ),// Imagem e legenda
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 40,00", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("2x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) // Preço, avaliação, produto
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://images.tcdn.com.br/img/img_prod/961443/noticia_13568440046272f072ac53a.JPG", width: 250,),
                        Text("Correntes ou cordinhas fashion ")
                      ],
                    ),
                  ),// Imagem e legenda
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 250,00", style: TextStyle(fontWeight: FontWeight.bold)),

                        Text("6x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) // Preço, avaliação, produto
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://img.joomcdn.net/c07dc1ba1409c7d004288482755e6d55b18d6076_original.jpeg", width: 250,),
                        Text("Correntes ou cordinhas fashion")
                      ],
                    ),
                  ),// Imagem e legenda
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,60", style: TextStyle(fontWeight: FontWeight.bold)),

                        Text("4x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) // Preço, avaliação, produto
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://media.eotica.com.br/magpleasure/mpblog/upload/5/e/5e5dcdc23ff79766bf406a800c32e66e.jpg", width: 250,),
                        Text("Correntes ou cordinhas fashion")
                      ],
                    ),
                  ),// Imagem e legenda
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 149,90", style: TextStyle(fontWeight: FontWeight.bold)),

                        Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) // Preço, avaliação, produto
                ],
              )
          ),
          SizedBox(
            height: 40,
          )



        ],
      ),
    );
  }

  buidlAppBar() {

  }
}

