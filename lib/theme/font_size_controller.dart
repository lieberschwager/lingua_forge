import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontSizeController {
  static const String _key = 'fontSize';
  static final ValueNotifier<double> currentSize = ValueNotifier(16.0);

  static Future<void> loadSize() async {
    final prefs = await SharedPreferences.getInstance();
    final size = prefs.getDouble(_key);
    if (size != null) {
      currentSize.value = size;
    }
  }

  static Future<void> updateSize(double size) async {
    currentSize.value = size;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_key, size);
  }
}
