import 'package:flutter/material.dart';

class Projetooticateste extends StatefulWidget {
  const Projetooticateste({super.key});

  @override
  State<Projetooticateste> createState() => _ProjetooticatesteState();
}

class _ProjetooticatesteState extends State<Projetooticateste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildBody(),
    );
  }
  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // https://a0.muscache.com/im/pictures/5e67688b-757d-44d6-8b4b-1e91dc6fe49f.jpg?im_w=1920

                ClipRRect(
                  child: Image.network(
                    'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=3200%2C2133',
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }

  buildText(String text, {fontSize, fontWeight, decoration}) {
    return Text(
      text,

    );
  }
}
