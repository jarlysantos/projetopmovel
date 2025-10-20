import 'package:flutter/material.dart';
import 'package:projarly2/domain/propriedade.dart';

import 'db/propriedades_Api.dart';

class Lentes extends StatefulWidget {
  const Lentes({super.key});

  @override
  State<Lentes> createState() => _LentesState();
}

class _LentesState extends State<Lentes> {
  List<Propriedade> listaPropriedades = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaPropriedades = await PropriedadesApi().listarApi();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lentes',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),

          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
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
          itemCount: listaPropriedades.length,
          itemBuilder: (context, i) {
            return buildProp(listaPropriedades[i]);
          },
        )
    );
  }

  buidlAppBar() {

  }

  buildProp(Propriedade p) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250,
              child: Column(
                children: [
                  Image.asset(p.urlImage, width: 250,),
                  Text(p.nome)
                ],
              ),
            ),
            Container(
              width: 100,
              child: Column(
                children: [
                  Text('${p.valor}', style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...new List<Icon>.generate((p.avaliacao/2).round(),(i)=>Icon(Icons.star, size: 18,)),
                        ...new List<Icon>.generate(5-(p.avaliacao/2).round(),(i)=>Icon(Icons.star_border_outlined, size: 18,)),
                      ],
                    ),
                  ),
                  Text(p.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                ],
              ),
            )
          ],
        )
    );
  }
}
