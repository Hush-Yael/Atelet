// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocaleEs extends AppLocale {
  AppLocaleEs([String locale = 'es']) : super(locale);

  @override
  String get settings_bar_title => 'configuración';

  @override
  String get settings_locale_label => 'idioma de la aplicación';

  @override
  String get settings_theme_label => 'tema de la aplicación';

  @override
  String get settings_theme_dark => 'oscuro';

  @override
  String get settings_theme_light => 'claro';

  @override
  String get settings_theme_system => 'sistema';

  @override
  String get settings_version_label => 'versión';

  @override
  String get settings_build_label => 'build';

  @override
  String get router_home_label => 'inicio';

  @override
  String get router_settings_label => 'configuración';
}
