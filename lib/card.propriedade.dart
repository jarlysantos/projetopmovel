import 'package:projarly2/propriedade.dart';
import 'package:flutter/material.dart';

class CardPropriedade extends StatefulWidget{
  Propriedade propriedade;

  CardPropriedade({super.key, required this.propriedade});

  @override
  State<CardPropriedade> createState() => _CardPropriedadeState();
}
class _CardPropriedadeState extends State<CardPropriedade> {

  Propriedade get propriedade => widget.propriedade;

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
      child: ListView(
        children: [
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network(propriedade.urlImage, width: 250,),
                        Text(propriedade.text)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text(propriedade.valor, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text(propriedade.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
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
                        Image.network(propriedade.urlImage, width: 250,),
                        Text(propriedade.text)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text(propriedade.valor, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text(propriedade.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
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
                        Image.network(propriedade.urlImage, width: 250,),
                        Text(propriedade.text)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text(propriedade.valor, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text(propriedade.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
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
                        Image.network(propriedade.urlImage, width: 250,),
                        Text(propriedade.text)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text(propriedade.valor, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text(propriedade.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
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
                        Image.network(propriedade.urlImage, width: 250,),
                        Text(propriedade.text)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text(propriedade.valor, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text(propriedade.parcelamento, style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
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
