import 'package:flutter/foundation.dart';
import 'package:projarly2/domain/oculos.dart';

class ProfileProvider extends ChangeNotifier {
  late Oculos _oculos;

  Oculos get oculos => _oculos;

  setOculos(Oculos user) {
    _oculos = user;
    notifyListeners();
  }
}