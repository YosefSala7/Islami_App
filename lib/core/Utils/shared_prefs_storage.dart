import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefsStorage {
  static Future<void> saveBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static Future<bool> getBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? true;
  }
}
