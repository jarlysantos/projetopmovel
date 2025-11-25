import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dados_provider.dart';

class LeituraPage extends StatelessWidget {
  const LeituraPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtém o valor armazenado no Provider
    String valor = context.watch<DadosProvider>().valor;

    return Scaffold(
      appBar: AppBar(title: Text("Leitura de Dados")),
      body: Center(
        child: Text(
          valor.isEmpty ? "Nenhum valor registrado" : "Valor: $valor",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
