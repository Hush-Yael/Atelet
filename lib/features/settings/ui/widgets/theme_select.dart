import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/core/controllers/theme_controller.dart';
import 'package:atelet/core/theme/app_theme.dart';
import 'package:atelet/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:icons_launcher/cli_commands.dart';
import 'setting_title.dart';

class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsTitle(label: context.l.settings_theme_label),

        Container(
          margin: .only(top: 8),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ThemeOption(
                icon: Icons.light_mode,
                label: context.l.settings_theme_light.capitalize(),
                themeMode: ThemeMode.light,
                pos: 0,
              ),
              ThemeOption(
                icon: Icons.dark_mode,
                label: context.l.settings_theme_dark.capitalize(),
                themeMode: ThemeMode.dark,
                pos: 1,
              ),
              ThemeOption(
                icon: Icons.brightness_medium,
                label: AppLocale.of(
                  context,
                )!.settings_theme_system.capitalize(),
                themeMode: ThemeMode.system,
                pos: 2,
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}

class ThemeOption extends StatelessWidget {
  const ThemeOption({
    super.key,
    required this.icon,
    required this.label,
    required this.themeMode,
    required this.pos,
  });

  final IconData icon;
  final String label;
  final ThemeMode themeMode;
  final int pos;

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = ThemeController.provider.of(
      context,
    );

    bool isSelected = themeController.themeMode.value == themeMode;

    return Expanded(
      child: GestureDetector(
        onTap: () => themeController.setTheme(themeMode),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isSelected
                ? context.theme.colorScheme.primary
                : Colors.transparent,

            borderRadius: pos == 1
                ? null
                : pos == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Theme.of(
                        context,
                      ).colorScheme.onPrimary.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Column(
            spacing: 4,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected
                    ? context.theme.colorScheme.onPrimary
                    : Colors.grey[600],
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                  color: isSelected
                      ? context.theme.colorScheme.onPrimary
                      : Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
