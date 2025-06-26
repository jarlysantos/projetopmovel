import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});


  @override
  State<TelaInicial> createState() => _TelaInicialState();
}


class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          backgroundColor: Color(0xFF214865),
          title: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://caaam.org.br/wp-content/uploads/2023/03/WhatsApp-Image-2021-05-17-at-2.55.51-PM.jpeg',
                height: 220, width: 220,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              SizedBox(height: 110),
              Center(
                child: Container(
                  width: 220,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF2d7ebb),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text('Lentes', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                ),
              ),


              SizedBox(height: 50),
              Center(
                child: Container(
                  width: 220,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF2d7ebb),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text('Armação', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                ),
              ),


              SizedBox(height: 50),
              Center(
                child: Container(
                  width: 220,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF2d7ebb),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text('Armação infantil', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                ),
              ),


              SizedBox(height: 50),
              Center(
                child: Container(
                  width: 220,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF2d7ebb),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text('Acessórios', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}


