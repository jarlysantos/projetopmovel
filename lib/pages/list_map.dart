import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';
import 'package:projarly2/domain/oculos_dao.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:provider/provider.dart';

class FavoritoOculos extends StatefulWidget {
  const FavoritoOculos({super.key});

  @override
  State<FavoritoOculos> createState() => _FavoritoOculosState();
}

class _FavoritoOculosState extends State<FavoritoOculos> {
  late Oculos user = context.watch<ProfileProvider>().oculos;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Oculos> oculosList = context.read<ProfileProvider>().oculosList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Óculos'),
        backgroundColor: Color(0xFF214865),
      ),
      body: ListView.builder(
        itemCount: oculosList.length,
        itemBuilder: (context, index) {
          return buildCard(oculosList[index]);
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
          provider.setOculos(o);
        },
      ),
    );
  }

  buildCard2() {
    Oculos o = context.read<ProfileProvider>().oculos;
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
          provider.setOculos(o);
        },
      ),
    );
  }
}
