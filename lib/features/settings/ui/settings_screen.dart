import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/features/settings/ui/widgets/app_info.dart';
import 'package:flutter/material.dart';
import 'package:icons_launcher/cli_commands.dart';
import 'widgets/theme_select.dart';
import 'widgets/lang_select.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(context.l.settings_bar_title.capitalize()),
      ),
      body: const Padding(
        padding: .all(20),
        child: Column(
          spacing: 12,
          children: [ThemeSelector(), LangSelect(), Spacer(), AppInfo()],
        ),
      ),
    );
  }
}
