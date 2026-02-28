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
  String get form_req_error => 'This field is required';

  @override
  String form_minlength_error(int length) {
    return 'At least $length characters are required';
  }

  @override
  String form_maxlength_error(int length) {
    return 'At most $length characters are allowed';
  }

  @override
  String get form_numeric_error => 'Value must be numeric';

  @override
  String form_min_error(int min) {
    return 'Value must be greater than or equal to $min';
  }

  @override
  String form_max_error(int max) {
    return 'Value must be less than or equal to $max';
  }

  @override
  String get form_min_today_error =>
      'Date must be greater than or equal to today';

  @override
  String get routines_form_title_new => 'New routine';

  @override
  String get routines_form_data_tab_label => 'Data';

  @override
  String get routines_form_exercises_tab_label => 'Exercises';

  @override
  String get routines_form_name_label => 'name';

  @override
  String get routines_form_rounds_label => 'rounds';

  @override
  String get routines_form_endDate_label => 'end date';

  @override
  String get routines_form_days_label => 'execution days';

  @override
  String get routines_form_discard_title => 'Discard routine';

  @override
  String get routines_form_discard_subtitle =>
      'Are you sure you want to discard this routine?';

  @override
  String get routines_form_discard_content => 'All data will be lost.';

  @override
  String get routines_form_discard_cancel => 'Cancel';

  @override
  String get routines_form_discard_confirm => 'Yes, discard';

  @override
  String get routines_form_datePicker_confirm => 'Select';

  @override
  String get router_nav_fab => 'New routine';

  @override
  String get router_home_label => 'home';

  @override
  String get router_settings_label => 'settings';
}
