import 'package:flutter/material.dart';

import 'cat_fact.dart';

class CatsMapPage extends StatefulWidget {
  const CatsMapPage({super.key});

  @override
  State<CatsMapPage> createState() => _CatsMapPageState();
}

class _CatsMapPageState extends State<CatsMapPage> {
  final CatFactApi _catFactApi = CatFactApi();
  String? catFact;
  bool isLoading = false;

  Future<void> _loadCatFact() async {
    setState(() => isLoading = true);
    try {
      final fact = await _catFactApi.getCatFact();
      setState(() => catFact = fact.data);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar fato do gato: $e')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fatos sobre Gatos 😺')),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : catFact != null
            ? Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            catFact!,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        )
            : const Text('Nenhum fato carregado ainda!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCatFact,
        child: const Icon(Icons.pets),
      ),
    );
  }
}
