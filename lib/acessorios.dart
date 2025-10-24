/*import 'package:flutter/material.dart';
import 'package:projarly2/db/acessorio_dao.dart';

import 'domain/acessorio.dart';

class Acessorios extends StatefulWidget {
  const Acessorios({super.key});

  @override
  State<Acessorios> createState() => _AcessoriosState();
}

class _AcessoriosState extends State<Acessorios> {

  String? acessorioSelecionado;
  final TextEditingController precoController = TextEditingController();


  List listaAcessorios = [];

  final List<String> acessoriosLoja = [
    'corrente',
    'Splay',
    'Franela'
  ];

  final List<String> parcelamento = [
    '1 vez',
    '2 vezes',
    '3 vezes'
  ];
  String? parcelamentoSelecionado;


  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaAcessorios = await AcessorioDao().listarAcessorios();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(),
        body: Center(
          child: Column(
            children: [
              Text("Registrar Acessórios ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
              DropdownButtonFormField<String>(
                value: acessorioSelecionado,
                decoration: InputDecoration(
                  labelText: "Acessorio",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: acessoriosLoja.map((String acessorio) {
                  return DropdownMenuItem<String>(
                    value: acessorio,
                    child: Text(acessorio),
                  );
                }).toList(),
                onChanged: (String? novoValor) {
                  setState(() {
                    acessorioSelecionado = novoValor;
                  });
                },
              ),
              TextField(
                controller: precoController,
                decoration: InputDecoration(
                  labelText: "Preço",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              DropdownButtonFormField<String>(
                value: parcelamentoSelecionado,
                decoration: InputDecoration(
                  labelText: "Parcelamento",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: parcelamento.map((String parcelamento) {
                  return DropdownMenuItem<String>(
                    value: parcelamento,
                    child: Text(parcelamento),
                  );
                }).toList(),
                onChanged: (String? novoValor) {
                  setState(() {
                    acessorioSelecionado = novoValor;
                  });
                },
              ),
  SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    AcessorioDao dao = AcessorioDao();
                    Acessorio nova = Acessorio(
                      acessorio: acessorioController.text,
                      preço: int.tryParse(preçoController.text) ?? 0,
                      parcelamento: parcelamento ?? "",
                    );
                    await dao.inserirAcessorio(nova);
                    print(await dao.listarAcessorio());
                    print("Acessorio salva no banco!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text("Salvar"),
                ),
              ),



            ],
    ),
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
}*/



