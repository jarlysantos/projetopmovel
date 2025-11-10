import 'package:flutter/material.dart';
import 'package:projarly2/api/apiverdade.dart';

import '../domain/dog_dados.dart';

class DogPage extends StatefulWidget {
  @override
  _DogPageState createState() => _DogPageState();
}
class _DogPageState extends State<DogPage> {
  final api = DogApi();
  Dog? dog;
  bool loading = true;
  @override
  void initState() {
    super.initState();
    loadDog();
  }
  Future<void> loadDog() async {
    var newDog = await api.getRandomDog();
    setState(() {
      dog = newDog;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Dog ')),
      body: Center(
        child: loading
            ? CircularProgressIndicator()
            : dog == null
            ? Text('Erro ao carregar cachorro')
            : Image.network(dog!.url),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadDog,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
