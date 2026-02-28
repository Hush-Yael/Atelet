import 'package:atelet/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:hux/hux.dart';

class DiscardRoutineBtn extends StatelessWidget {
  const DiscardRoutineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => HuxDialog(
            title: context.l.routines_form_discard_title,
            subtitle: context.l.routines_form_discard_subtitle,
            content: Text(context.l.routines_form_discard_content),
            variant: .destructive,
            actions: [
              HuxButton(
                variant: .secondary,
                onPressed: () => Navigator.pop(context),
                child: Text(context.l.routines_form_discard_cancel),
              ),
              HuxButton(
                child: Text(context.l.routines_form_discard_confirm),
                onPressed: () {
                  Navigator.pop(context);

                  if (GoRouter.of(context).canPop()) {
                    GoRouter.of(context).pop();
                  } else {
                    GoRouter.of(context).go(AppRoutes.home.path);
                  }
                },
              ),
            ],
          ),
        );
      },
      icon: const Icon(Icons.close),
    );
  }
}
