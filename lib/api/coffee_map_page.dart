import 'package:flutter/material.dart';
import 'coffe_service.dart';

class CoffeeMapPage extends StatefulWidget {
  const CoffeeMapPage({super.key});

  @override
  State<CoffeeMapPage> createState() => _CoffeeMapPageState();
}

class _CoffeeMapPageState extends State<CoffeeMapPage> {
  final CoffeeService _coffeeService = CoffeeService();
  String? imageUrl;
  bool isLoading = false;

  Future<void> _loadCoffeeImage() async {
    setState(() => isLoading = true);
    try {
      final url = await _coffeeService.getRandomCoffeeImage();
      setState(() => imageUrl = url);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar café: $e')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCoffeeImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Café Aleatório')),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : imageUrl != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl!,
              key: ValueKey(imageUrl),),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _loadCoffeeImage();
                setState(() {
                });
              },
              child: const Text('Gerar outro café '),
            ),
          ],
        )
            : ElevatedButton(
          onPressed: _loadCoffeeImage,
          child: const Text('Carregar café'),
        ),
      ),
    );
  }
}

