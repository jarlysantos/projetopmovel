import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefxs {
  static const String userStatusKey = 'userStatus';

  Future<void> setUserStatus(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userStatusKey, status);
  }

  Future<bool> getUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userStatusKey) ?? false;
  }

  Future<void> clearUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(userStatusKey);
  }
}
