import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Infantil extends StatefulWidget {
  const Infantil({super.key});

  @override
  State<Infantil> createState() => _InfantilState();
}

class _InfantilState extends State<Infantil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ÓCULOS INFANTIL',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: const Color(0xFFC58C6D),
        ),
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          buildItem(
            imageUrl: 'https://i.pinimg.com/736x/33/3a/15/333a15fecadc047609e0e33c9a7d8edc.jpg',
            modelo: 'Gatinho',
            cor: 'Rosa Claro',
            preco: 'RS 300',
          ),
          const SizedBox(height: 20),
          buildItem(
            imageUrl: 'https://i.pinimg.com/736x/1a/f2/d6/1af2d6c2825354f6770ba249ba2bcdcb.jpg',
            modelo: 'Arco-íris',
            cor: 'Rosa Claro',
            preco: 'RS 350',
          ),
          const SizedBox(height: 20),
          buildItem(
            imageUrl: 'https://i.pinimg.com/736x/78/7e/7a/787e7a2b8dd5219ab507dc141145b5b7.jpg',
            modelo: 'Florzinha',
            cor: 'Marrom Claro',
            preco: 'RS 295',
          ),
          const SizedBox(height: 20),
          buildItem(
            imageUrl: 'https://i.pinimg.com/736x/8d/91/ab/8d91ab939d607e226464272225d71a82.jpg',
            modelo: 'Laço',
            cor: 'Rosa Claro',
            preco: 'RS 400',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildItem({
    required String imageUrl,
    required String modelo,
    required String cor,
    required String preco,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(imageUrl),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              modelo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cor,
              style: const TextStyle(fontSize: 17),
            ),
            Text(
              preco,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}
