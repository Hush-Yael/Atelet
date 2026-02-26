import 'package:atelet/core/controllers/shared_preferences_controller.dart';
import 'package:disco/disco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solidart/flutter_solidart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:atelet/l10n/app_localizations.dart';

class LocaleController {
  LocaleController({required this.prefs}) {
    _locale.value = getCurrentLocale();
  }

  static final provider = Provider((context) {
    final prefs = sharedPreferencesProvider.of(context);

    return LocaleController(prefs: prefs);
  });

  static const localizationsDelegates = [
    AppLocale.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  SharedPreferences prefs;
  final Signal<Locale?> _locale = Signal(null);

  Locale? get currentLocale => _locale.value;

  static const List<Locale> supportedLocales = [Locale('en'), Locale('es')];

  Future setLocale(Locale newLocale) async {
    _locale.value = newLocale;
    await prefs.setString('locale', newLocale.languageCode);
  }

  Locale getCurrentLocale() {
    final String? lN = prefs.getString('locale');
    return lN != null ? Locale(lN) : const Locale('en');
  }

  static Locale? localeListResolutionCallback(
    List<Locale>? locales,
    Iterable<Locale> supportedLocales,
  ) {
    final locale = locales?.firstOrNull ?? const Locale('en');
    return supportedLocales.contains(locale) ? locale : const Locale('en');
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocale get l => AppLocale.of(this)!;
}
