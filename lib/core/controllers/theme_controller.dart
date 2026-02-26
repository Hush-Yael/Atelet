import 'package:atelet/core/controllers/shared_preferences_controller.dart';
import 'package:disco/disco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solidart/flutter_solidart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController {
  ThemeController({required this.prefs}) {
    themeMode.value = getTheme();
  }

  SharedPreferences prefs;
  Signal<ThemeMode?> themeMode = Signal(null);

  Future setTheme(ThemeMode newMode) async {
    themeMode.value = newMode;
    await prefs.setString('theme', newMode.name);
  }

  ThemeMode getTheme() {
    final t = prefs.getString('theme');
    final isSystem = t == null || t == 'system';

    return isSystem
        ? ThemeMode.system
        : t == 'dark'
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  static final provider = Provider(
    (context) => ThemeController(prefs: sharedPreferencesProvider.of(context)),
  );
}
