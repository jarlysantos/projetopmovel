import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const String userStatusKey = 'userStatus';

  /// Salva o status do usuário (por exemplo: já está registrado)
  Future<void> setUserStatus(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userStatusKey, status);
  }

  /// Lê o status salvo. Retorna `false` se não existir.
  Future<bool> getUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userStatusKey) ?? false;
  }

  /// Limpa o status (opcional, útil para logout)
  Future<void> clearUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(userStatusKey);
  }
}
