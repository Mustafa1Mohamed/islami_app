import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setInt(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  static int? getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  static Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  static String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  static Future<bool> setStringList(String key, List<String> value) async {
    return await _sharedPreferences.setStringList(key, value);
  }

  static List<String>? getStringList(String key) {
    return _sharedPreferences.getStringList(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }
}
