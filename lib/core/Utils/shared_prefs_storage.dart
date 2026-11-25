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

  static Future<void> addSurah(String surahNum) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final recent = prefs.getStringList("recent") ?? [];
    if (recent.contains(surahNum)) {
      recent.remove(surahNum);
    }
    recent.insert(0, surahNum);
    final trimmed = recent.take(5).toList();
    await prefs.setStringList("recent", trimmed);
  }

  static Future<List<String>> getMostRecentSurahList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getStringList("recent") ?? <String>[];
  }
}
