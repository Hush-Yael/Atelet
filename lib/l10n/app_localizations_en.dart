// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocaleEn extends AppLocale {
  AppLocaleEn([String locale = 'en']) : super(locale);

  @override
  String get settings_bar_title => 'settings';

  @override
  String get settings_locale_label => 'app language';

  @override
  String get settings_theme_label => 'app theme';

  @override
  String get settings_theme_dark => 'dark';

  @override
  String get settings_theme_light => 'light';

  @override
  String get settings_theme_system => 'system';

  @override
  String get settings_version_label => 'version';

  @override
  String get settings_build_label => 'build';

  @override
  String get router_home_label => 'home';

  @override
  String get router_settings_label => 'settings';
}
