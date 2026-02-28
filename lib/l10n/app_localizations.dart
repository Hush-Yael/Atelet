import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocale
/// returned by `AppLocale.of(context)`.
///
/// Applications need to include `AppLocale.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocale.localizationsDelegates,
///   supportedLocales: AppLocale.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocale.supportedLocales
/// property.
abstract class AppLocale {
  AppLocale(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocale? of(BuildContext context) {
    return Localizations.of<AppLocale>(context, AppLocale);
  }

  static const LocalizationsDelegate<AppLocale> delegate = _AppLocaleDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// No description provided for @settings_bar_title.
  ///
  /// In es, this message translates to:
  /// **'configuración'**
  String get settings_bar_title;

  /// No description provided for @settings_locale_label.
  ///
  /// In es, this message translates to:
  /// **'idioma de la aplicación'**
  String get settings_locale_label;

  /// No description provided for @settings_theme_label.
  ///
  /// In es, this message translates to:
  /// **'tema de la aplicación'**
  String get settings_theme_label;

  /// No description provided for @settings_theme_dark.
  ///
  /// In es, this message translates to:
  /// **'oscuro'**
  String get settings_theme_dark;

  /// No description provided for @settings_theme_light.
  ///
  /// In es, this message translates to:
  /// **'claro'**
  String get settings_theme_light;

  /// No description provided for @settings_theme_system.
  ///
  /// In es, this message translates to:
  /// **'sistema'**
  String get settings_theme_system;

  /// No description provided for @settings_version_label.
  ///
  /// In es, this message translates to:
  /// **'versión'**
  String get settings_version_label;

  /// No description provided for @settings_build_label.
  ///
  /// In es, this message translates to:
  /// **'build'**
  String get settings_build_label;

  /// No description provided for @form_req_error.
  ///
  /// In es, this message translates to:
  /// **'Este campo es requerido'**
  String get form_req_error;

  /// No description provided for @form_minlength_error.
  ///
  /// In es, this message translates to:
  /// **'Se requieren al menos {length} caracteres'**
  String form_minlength_error(int length);

  /// No description provided for @form_maxlength_error.
  ///
  /// In es, this message translates to:
  /// **'Se aceptan {length} caracteres o menos'**
  String form_maxlength_error(int length);

  /// No description provided for @form_numeric_error.
  ///
  /// In es, this message translates to:
  /// **'El valor debe ser numérico'**
  String get form_numeric_error;

  /// No description provided for @form_min_error.
  ///
  /// In es, this message translates to:
  /// **'El valor debe ser mayor o igual a {min}'**
  String form_min_error(int min);

  /// No description provided for @form_max_error.
  ///
  /// In es, this message translates to:
  /// **'El valor debe ser menor o igual a {max}'**
  String form_max_error(int max);

  /// No description provided for @form_min_today_error.
  ///
  /// In es, this message translates to:
  /// **'La fecha debe ser mayor o igual a la fecha actual'**
  String get form_min_today_error;

  /// No description provided for @routines_form_title_new.
  ///
  /// In es, this message translates to:
  /// **'Nueva rutina'**
  String get routines_form_title_new;

  /// No description provided for @routines_form_data_tab_label.
  ///
  /// In es, this message translates to:
  /// **'Datos'**
  String get routines_form_data_tab_label;

  /// No description provided for @routines_form_exercises_tab_label.
  ///
  /// In es, this message translates to:
  /// **'Ejercicios'**
  String get routines_form_exercises_tab_label;

  /// No description provided for @routines_form_name_label.
  ///
  /// In es, this message translates to:
  /// **'nombre'**
  String get routines_form_name_label;

  /// No description provided for @routines_form_rounds_label.
  ///
  /// In es, this message translates to:
  /// **'rondas'**
  String get routines_form_rounds_label;

  /// No description provided for @routines_form_endDate_label.
  ///
  /// In es, this message translates to:
  /// **'fecha de finalización'**
  String get routines_form_endDate_label;

  /// No description provided for @routines_form_days_label.
  ///
  /// In es, this message translates to:
  /// **'días de ejecución'**
  String get routines_form_days_label;

  /// No description provided for @routines_form_discard_title.
  ///
  /// In es, this message translates to:
  /// **'Descartar rutina'**
  String get routines_form_discard_title;

  /// No description provided for @routines_form_discard_subtitle.
  ///
  /// In es, this message translates to:
  /// **'¿Realmente quieres descartar esta rutina?'**
  String get routines_form_discard_subtitle;

  /// No description provided for @routines_form_discard_content.
  ///
  /// In es, this message translates to:
  /// **'Se perderán todos los datos introducidos.'**
  String get routines_form_discard_content;

  /// No description provided for @routines_form_discard_cancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get routines_form_discard_cancel;

  /// No description provided for @routines_form_discard_confirm.
  ///
  /// In es, this message translates to:
  /// **'Sí, descartar'**
  String get routines_form_discard_confirm;

  /// No description provided for @routines_form_datePicker_confirm.
  ///
  /// In es, this message translates to:
  /// **'Seleccionar'**
  String get routines_form_datePicker_confirm;

  /// No description provided for @router_nav_fab.
  ///
  /// In es, this message translates to:
  /// **'Nueva rutina'**
  String get router_nav_fab;

  /// No description provided for @router_home_label.
  ///
  /// In es, this message translates to:
  /// **'inicio'**
  String get router_home_label;

  /// No description provided for @router_settings_label.
  ///
  /// In es, this message translates to:
  /// **'configuración'**
  String get router_settings_label;
}

class _AppLocaleDelegate extends LocalizationsDelegate<AppLocale> {
  const _AppLocaleDelegate();

  @override
  Future<AppLocale> load(Locale locale) {
    return SynchronousFuture<AppLocale>(lookupAppLocale(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocaleDelegate old) => false;
}

AppLocale lookupAppLocale(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocaleEn();
    case 'es':
      return AppLocaleEs();
  }

  throw FlutterError(
    'AppLocale.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
