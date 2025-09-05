import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'primary_color_config.dart';

class PrimaryColorController {
  static const String _key = 'primaryColor';
  static final ValueNotifier<MaterialColor> currentColor =
      ValueNotifier(PrimaryColors.options['Blau']!);

  static Future<void> loadColor() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(_key);
    if (name != null && PrimaryColors.options.containsKey(name)) {
      currentColor.value = PrimaryColors.options[name]!;
    }
  }

  static Future<void> updateColor(String name) async {
    if (PrimaryColors.options.containsKey(name)) {
      currentColor.value = PrimaryColors.options[name]!;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, name);
    }
  }
}
