import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecureStorage {
  static late final SharedPreferences _instance;

  static Future<void> initSharedPref() async => _instance = await SharedPreferences.getInstance();

  setTheme(ThemeMode theme) => _instance.setString('theme', theme.name);

  ThemeMode getTheme() {
    switch (_instance.getString('theme')) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.light;
      default:
        return ThemeMode.light;
    }
  }

  setTime(String time) => _instance.setString('time', time);

  String getTime() => _instance.getString('time') ?? "";

  clearTime() => _instance.remove('time');

  Future<bool> clear() async => await _instance.clear();
}
