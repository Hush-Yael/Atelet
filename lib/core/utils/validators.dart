import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:atelet/core/controllers/locale_controller.dart';

class Validators {
  static FormFieldValidator<String> required(BuildContext context) =>
      FormBuilderValidators.required(errorText: context.l.form_req_error);

  static FormFieldValidator<String> minLength(
    BuildContext context,
    int length,
  ) => FormBuilderValidators.minLength(
    length,
    errorText: context.l.form_minlength_error(length),
  );

  static FormFieldValidator<String> maxLength(
    BuildContext context,
    int length,
  ) => FormBuilderValidators.maxLength(
    length,
    errorText: context.l.form_maxlength_error(length),
  );

  static FormFieldValidator<String> numeric(BuildContext context) =>
      FormBuilderValidators.numeric(errorText: context.l.form_numeric_error);

  static FormFieldValidator<String> min(BuildContext context, int min) =>
      FormBuilderValidators.min(min, errorText: context.l.form_min_error(min));

  static FormFieldValidator<String> max(BuildContext context, int max) =>
      FormBuilderValidators.max(max, errorText: context.l.form_max_error(max));
}
