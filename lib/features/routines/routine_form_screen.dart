import 'package:atelet/features/routines/widgets/data_fields.dart';
import 'package:atelet/features/routines/widgets/discard_btn.dart';
import 'package:flutter/material.dart';
import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hux/hux.dart';

class RoutineFormScreen extends StatelessWidget {
  RoutineFormScreen({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l.routines_form_title_new),
        actions: const [DiscardRoutineBtn()],
      ),
      body: Padding(
        padding: .symmetric(vertical: 2, horizontal: 20),
        child: FormBuilder(
          key: _formKey,
          child: HuxTabs(
            size: .small,
            tabs: [
              HuxTabItem(
                label: context.l.routines_form_data_tab_label,
                content: const FormDataFields(),
              ),
              HuxTabItem(
                label: context.l.routines_form_exercises_tab_label,
                content: const Text('Exercises'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: const Icon(Icons.check),
      ),
    );
  }
}
