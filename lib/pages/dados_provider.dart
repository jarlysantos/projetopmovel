import 'package:flutter/material.dart';

class DadosProvider extends ChangeNotifier {
  String _valor = "";

  String get valor => _valor;

  void alterarValor(String novoValor) {
    _valor = novoValor;
    notifyListeners(); // avisa a interface que algo mudou
  }
}
