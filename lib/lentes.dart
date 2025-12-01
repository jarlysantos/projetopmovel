import 'package:flutter/material.dart';
import 'package:projarly2/api/page/google.dart';
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
    listaPropriedades = await PropriedadesApi().findAll();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Lentes',
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
          ),
          backgroundColor: const Color(0xFF00695C),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
        ),

        body: buildBody(),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Para retirar na loja, veja a localização",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00695C),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample()));
                },
                child: Text("Ver no Mapa", style:TextStyle(color: Colors.white ) ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ListView.builder(
        itemCount: listaPropriedades.length,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return buildProp(listaPropriedades[i]);
        },
      ),
    );
  }

  buildProp(Propriedade p) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(p.urlImage, width: 250),
                SizedBox(height: 6),
                Text(p.nome),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Column(
              children: [
                Text('${p.valor}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List<Icon>.generate(
                        (p.avaliacao / 2).round(),
                            (i) => Icon(Icons.star, size: 18)),
                    ...List<Icon>.generate(
                        5 - (p.avaliacao / 2).round(),
                            (i) => Icon(Icons.star_border_outlined, size: 18)),
                  ],
                ),
                Text(
                  p.parcelamento,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
