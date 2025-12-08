import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';
import 'package:projarly2/domain/oculos_dao.dart';
import 'package:projarly2/pages/list_map.dart';
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

  @override
  void initState() {
    super.initState();
    _carregarOculos();
  }

  Future<void> _carregarOculos() async {
    final dao = OculosDao();
    final lista = await dao.listarOculos();
    setState(() {
      _oculos = lista;
      _carregando = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Óculos'),
        backgroundColor: Color(0xFF214865),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return FavoritoOculos();
                  },
                ));
              },
              icon: Icon(
                Icons.star,
                color: Colors.amber,
              ))
        ],
      ),
      body: _carregando
          ? const Center(child: CircularProgressIndicator())
          : _oculos.isEmpty
              ? const Center(child: Text('Não tem nenhum óculos cadastrado.'))
              : ListView.builder(
                  itemCount: _oculos.length,
                  itemBuilder: (context, index) {
                    final o = _oculos[index];
                    return buildCard(o);
                  },
                ),
    );
  }

  buildCard(Oculos o) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Image.network(
          o.url,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.image),
        ),
        title: Text(o.nome),
        subtitle: Text('${o.cor} - R\$ ${o.preco.toStringAsFixed(2)}'),
        onTap: () {
          ProfileProvider provider = context.read<ProfileProvider>();
          provider.addOculos(o);
          // provider.setOculos(o);
        },
      ),
    );
  }
}
