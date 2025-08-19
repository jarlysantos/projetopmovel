import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';


class Projetootica extends StatefulWidget {
  Oculos oculos;

  Projetootica({super.key, required this.oculos});

  @override
  State<Projetootica> createState() => _ProjetooticaState();
}


class _ProjetooticaState extends State<Projetootica> {
  Oculos get oculos => widget.oculos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.network(
                    widget.oculos.url,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oculos.nome,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlueAccent,
                        )),
                    Text(widget.oculos.cor),
                    Text(widget.oculos.preco.toString())
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
                    widget.oculos.url,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oculos.nome,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlueAccent,
                        )),
                    Text(widget.oculos.cor),
                    Text(widget.oculos.preco.toString())
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
                    widget.oculos.url,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oculos.nome,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlueAccent,
                        )),
                    Text(widget.oculos.cor),
                    Text(widget.oculos.preco.toString())
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
                    widget.oculos.url,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oculos.nome,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlueAccent,
                        )),
                    Text(widget.oculos.cor),
                    Text(widget.oculos.preco.toString())
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
