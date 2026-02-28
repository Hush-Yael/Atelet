import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:disco/disco.dart';
import 'package:flutter_solidart/flutter_solidart.dart';

class WeekDaySelectorController {
  WeekDaySelectorController({
    required this.currentLocale,
    required this.formBuilderField,
  }) {
    _daysInitials = currentLocale.languageCode == 'es'
        ? ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO']
        : ['MO', 'TU', 'WE', 'TH', 'FR', 'SA', 'SU'];
  }

  final FormFieldState<List<bool>> formBuilderField;

  final ListSignal<bool> _selectedDays = ListSignal(List.filled(7, false));

  List<bool> get selectedDays => _selectedDays.value;

  bool isSelected(int index) => _selectedDays.value[index];

  Locale currentLocale;
  late List<String> _daysInitials;

  List<String> get daysInitials => _daysInitials;

  void toggleDay(int index) {
    _selectedDays.updateValue((value) {
      value[index] = !_selectedDays.value[index];
      return value;
    });

    formBuilderField.didChange(selectedDays);
  }

  static final provider = Provider.withArgument((
    context,
    FormFieldState<List<bool>> field,
  ) {
    final LocaleController localeController = LocaleController.provider.of(
      context,
    );

    return WeekDaySelectorController(
      formBuilderField: field,
      currentLocale:
          localeController.currentLocale ?? LocaleController.defaultLocale,
    );
  });
}
