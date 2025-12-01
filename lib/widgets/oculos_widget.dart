import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';

class OculosWidget extends StatefulWidget {
  Oculos oculos;
  int id;

  OculosWidget({super.key, required this.oculos, required this.id});

  @override
  State<OculosWidget> createState() => _OculosWidgetState();
}

class _OculosWidgetState extends State<OculosWidget> {
  Oculos get oculos => widget.oculos;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.id == 0)
            Center(
              child: Text(
                "Armação",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ClipRRect(
            child: Image.network(widget.oculos.url),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.oculos.nome,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Text(
                widget.oculos.cor,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Text(
                widget.oculos.preco.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
