import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController modeloController = TextEditingController();
  TextEditingController corController = TextEditingController();
  TextEditingController precoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          backgroundColor: const Color(0xFFC58C6D),
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
                child: Text('Cadastre um oculos',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFC58C6D),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              TextField(
                controller: modeloController,
                decoration: const InputDecoration(
                  hintText: 'Modelo',
                ),
              ),

              TextField(
                controller: corController,
                decoration: const InputDecoration(
                  hintText: 'Cor',
                ),
              ),

              TextField(
                controller: precoController,
                decoration: const InputDecoration(
                  hintText: 'Preço',
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC58C6D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                onPressed: () => _salvarOculos(),
                child: const Text(
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


  Future<void> _salvarOculos() async{
    String modelo = modeloController.text.trim();
    String cor = corController.text.trim();
    String preco = precoController.text.trim();

    if(modelo.isEmpty || cor.isEmpty || preco.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha todos os campos')),
      );
      return;
    }
    print('Oculos Cadastro: Modelo: $modelo, Cor:$cor, Preço: $preco');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('oculos $modelo cadastrado com sucesso!')),
    );


    modeloController.clear();
    corController.clear();
    precoController.clear();
  }
}