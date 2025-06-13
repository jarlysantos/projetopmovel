import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infantil extends StatefulWidget {
  const infantil({super.key});

  @override
  State<infantil> createState() => _infantilState();
}

class _infantilState extends State<infantil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ÓCULOS INFATIL',
          style: TextStyle(
            fontWeight: FontWeight.w900,

          ),
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://i.pinimg.com/736x/33/3a/15/333a15fecadc047609e0e33c9a7d8edc.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Gatinho", style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("Rosa Claro", style: TextStyle(fontSize: 17)),
                    Text("RS300" , style: TextStyle(fontSize: 17),),
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://i.pinimg.com/736x/1a/f2/d6/1af2d6c2825354f6770ba249ba2bcdcb.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Arco-íris", style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("Rosa claro", style: TextStyle(fontSize: 17)),
                    Text("RS : 350", style: TextStyle(fontSize: 17))
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://i.pinimg.com/736x/78/7e/7a/787e7a2b8dd5219ab507dc141145b5b7.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Florzinha", style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("Marron Claro", style: TextStyle(fontSize: 17)),
                    Text("RS295",style: TextStyle(fontSize: 17))
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  child: Image.network(
                    'https://i.pinimg.com/736x/8d/91/ab/8d91ab939d607e226464272225d71a82.jpg',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                //IMAGEM

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Laço", style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("Rosa claro", style: TextStyle(fontSize: 17)),
                    Text("RS400",style: TextStyle(fontSize: 17))
                  ],
                )

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

  buidlAppBar() {

  }

}


