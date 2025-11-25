import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dados_provider.dart';

class RegistroPage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro de Dados")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Digite um valor",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<DadosProvider>(context, listen: false)
                    .alterarValor(controller.text);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Valor salvo com sucesso!")),
                );
              },
              child: Text("Salvar no Provider"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/leitura');
              },
              child: Text("Ir para Tela de Leitura"),
            )
          ],
        ),
      ),
    );
  }
}
