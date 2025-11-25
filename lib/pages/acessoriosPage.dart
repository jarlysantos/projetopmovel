import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projarly2/api/acessorios_api.dart';
import 'package:projarly2/domain/acessorio.dart';

class Acessoriospage extends StatefulWidget {
  const Acessoriospage({Key? key}) : super(key: key);

  @override
  State<Acessoriospage> createState() => _AcessoriospageState();
}
class _AcessoriospageState extends State<Acessoriospage> {

  late Future<List<Acessorio>> futureAcessorio;

  @override
  void initState() {
    super.initState();
    futureAcessorio = AcessoriosApi().findAll();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<Acessorio>>(
            future: futureAcessorio,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(child: Text('UM ERRO FOI ENCONTRADO'));
              }
              if (snapshot.hasData) {
              List<Acessorio>? acessorio = snapshot.data;
              return ListView.builder(
              itemCount: acessorio?.length,
              itemBuilder: (context, index) {
              return buildAcessorio(acessorio![index]);
              },
              );
              }
                return Center(child: CircularProgressIndicator(),);
                },
                ),
          ),
        ),
      );
  }
  buildAppbar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Acessórios',
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {},
      ),
    );
  }

  Widget buildAcessorio(Acessorio acessorio) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade100,

        border: Border.all(color: Colors.green, width: 2.5),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.network(
              acessorio.urlImage,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  acessorio.nome,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  acessorio.parcelamento,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  acessorio.valor,
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
