import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter/material.dart';
import 'package:atelet/core/utils/validators.dart';
import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/features/routines/controllers/days_controller.dart';
import 'package:atelet/features/routines/widgets/days_selector.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:disco/disco.dart';

class FormDataFields extends StatelessWidget {
  const FormDataFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 10),
      child: Column(
        spacing: 25,
        children: [
          FormBuilderTextField(
            name: 'name',
            decoration: InputDecoration(
              label: Text(context.l.routines_form_name_label),
            ),
            validator: FormBuilderValidators.compose([
              Validators.required(context),
              Validators.minLength(context, 3),
            ]),
          ),

          FormBuilderTextField(
            name: 'rounds',
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text(context.l.routines_form_rounds_label),
            ),
            validator: FormBuilderValidators.compose([
              Validators.required(context),
              Validators.numeric(context),
              Validators.min(context, 1),
            ]),
            valueTransformer: (value) => int.tryParse(value ?? ''),
          ),

          FormBuilderDateTimePicker(
            name: 'endDate',
            decoration: InputDecoration(
              label: Text(context.l.routines_form_endDate_label),
            ),
            firstDate: DateTime.now(),
            confirmText: context.l.routines_form_datePicker_confirm,
            validator: FormBuilderValidators.compose([
              (value) {
                if (value != null && value.isBefore(DateTime.now())) {
                  return context.l.form_min_today_error;
                }

                return null;
              },
            ]),
          ),

          FormBuilderField(
            name: 'days',
            builder: (FormFieldState<List<bool>> field) {
              return ProviderScope(
                providers: [WeekDaySelectorController.provider(field)],
                child: WeekDaySelector(),
              );
            },
          ),
        ],
      ),
    );
  }
}
