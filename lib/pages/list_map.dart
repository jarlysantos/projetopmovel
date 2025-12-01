import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';
import 'package:projarly2/domain/oculos_dao.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:provider/provider.dart';

class ListaOculos extends StatefulWidget {
  const ListaOculos({super.key});

  @override
  State<ListaOculos> createState() => _ListaOculosState();
}

class _ListaOculosState extends State<ListaOculos> {
  List<Oculos> _oculos = [];
  bool _carregando = true;
  late Oculos user = context.watch<ProfileProvider>().oculos;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Óculos'),
        backgroundColor: Color(0xFF214865),
      ),
      body: _carregando
          ? const Center(child: CircularProgressIndicator())
          : _oculos.isEmpty
          ? const Center(child: Text('nao tem nenhum óculos cadastrado.'))
          : ListView.builder(
        itemCount: _oculos.length,
        itemBuilder: (context, index) {
          final o = _oculos[index];
          return InkWell(

          );
        },
      ),
    );
  }
}
