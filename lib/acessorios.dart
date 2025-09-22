import 'package:flutter/material.dart';
import 'package:projarly2/db/acessorio_dao.dart';

import 'domain/acessorio.dart';

class Acessorios extends StatefulWidget {
  const Acessorios({super.key});

  @override
  State<Acessorios> createState() => _AcessoriosState();
}

class _AcessoriosState extends State<Acessorios> {

  List listaAcessorios = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaAcessorios = await AcessorioDao().listarAcessorios();
    setState(() {});
  }

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
      child: ListView.builder(
            shrinkWrap: true,
            itemCount: listaAcessorios.length,
            itemBuilder: (context, i) {
              return buildAcessorio(listaAcessorios[i]);
            }
          )
    );
  }
  buildAcessorio(Acessorio a){
    return  Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250,
              child: Column(
                children: [
                  Image.network(a.urlImage,
                    width: 250,),
                  Text(a.nome)
                ],
              ),
            ),
            Container(
              width: 100,
              child: Column(
                children: [
                  Text(a.valor),
                  Text(a.parcelamento)

                ],
              ),
            ),
          ],
        )
    );


  }

  }


