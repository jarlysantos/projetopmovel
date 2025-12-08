import 'package:flutter/foundation.dart';
import 'package:projarly2/domain/oculos.dart';

class ProfileProvider extends ChangeNotifier {
  late Oculos _oculos;
  late List<Oculos> _oculosList;

  ProfileProvider(){
    _oculosList = [];
  }

  Oculos get oculos => _oculos;
  List<Oculos> get oculosList => _oculosList;

  addOculos(Oculos oculos) {
    _oculosList.add(oculos);
    notifyListeners();
  }

  setOculos(Oculos user) {
    _oculos = user;
    notifyListeners();
  }
}