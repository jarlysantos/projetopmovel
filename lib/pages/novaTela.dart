import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NovaTela extends StatefulWidget {
  const NovaTela({super.key});


  @override
  State<NovaTela> createState() => _NovaTelaState();
}


class _NovaTelaState extends State<NovaTela> {
  get passwordController => null;


  get userController => null;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          backgroundColor: Color(0xFF214865),
          title: Center(
            child: Image.network(
              'https://caaam.org.br/wp-content/uploads/2023/03/WhatsApp-Image-2021-05-17-at-2.55.51-PM.jpeg',
              height: 220, width: 220,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text('Cadastre a armação ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF214865),),),
              ),
              SizedBox(height: 70),
              TextField(
                controller: userController,
                decoration: InputDecoration(
                  hintText: 'Nome da armação',
                ),
              ),


              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Cor',
                ),
              ),


              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Valor',
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF214865),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),


                onPressed: () => onPressed(),
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
Future<void> onPressed() async{


}

