import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Acessoriospage extends StatefulWidget {
  const Acessoriospage({super.key});

  @override
  State<Acessoriospage> createState() => _AcessoriospageState();
}

class _AcessoriospageState extends State<Acessoriospage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(),
          body: Padding(
              padding: EdgeInsets.all(10),
          ),
      ),
    );
  }
}


buildAppbar(){
  return AppBar(

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
    ),
  );
}
