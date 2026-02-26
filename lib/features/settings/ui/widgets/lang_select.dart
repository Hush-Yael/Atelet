import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:hux/hux.dart';
import 'setting_title.dart';

class LangSelect extends StatelessWidget {
  const LangSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final LocaleController l10n = LocaleController.provider.of(context);

    return Column(
      spacing: 8,
      children: [
        SettingsTitle(label: context.l.settings_locale_label),
        HuxDropdown<Locale>(
          variant: .secondary,
          onChanged: l10n.setLocale,
          value: l10n.currentLocale,
          items: [
            HuxDropdownItem(value: const Locale('en'), child: Text('English')),
            HuxDropdownItem(value: const Locale('es'), child: Text('Español')),
          ],
        ),
      ],
    );
  }
}
