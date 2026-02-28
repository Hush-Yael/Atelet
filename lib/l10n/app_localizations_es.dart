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
  String get form_req_error => 'Este campo es requerido';

  @override
  String form_minlength_error(int length) {
    return 'Se requieren al menos $length caracteres';
  }

  @override
  String form_maxlength_error(int length) {
    return 'Se aceptan $length caracteres o menos';
  }

  @override
  String get form_numeric_error => 'El valor debe ser numérico';

  @override
  String form_min_error(int min) {
    return 'El valor debe ser mayor o igual a $min';
  }

  @override
  String form_max_error(int max) {
    return 'El valor debe ser menor o igual a $max';
  }

  @override
  String get form_min_today_error =>
      'La fecha debe ser mayor o igual a la fecha actual';

  @override
  String get routines_form_title_new => 'Nueva rutina';

  @override
  String get routines_form_data_tab_label => 'Datos';

  @override
  String get routines_form_exercises_tab_label => 'Ejercicios';

  @override
  String get routines_form_name_label => 'nombre';

  @override
  String get routines_form_rounds_label => 'rondas';

  @override
  String get routines_form_endDate_label => 'fecha de finalización';

  @override
  String get routines_form_days_label => 'días de ejecución';

  @override
  String get routines_form_discard_title => 'Descartar rutina';

  @override
  String get routines_form_discard_subtitle =>
      '¿Realmente quieres descartar esta rutina?';

  @override
  String get routines_form_discard_content =>
      'Se perderán todos los datos introducidos.';

  @override
  String get routines_form_discard_cancel => 'Cancelar';

  @override
  String get routines_form_discard_confirm => 'Sí, descartar';

  @override
  String get routines_form_datePicker_confirm => 'Seleccionar';

  @override
  String get router_nav_fab => 'Nueva rutina';

  @override
  String get router_home_label => 'inicio';

  @override
  String get router_settings_label => 'configuración';
}
