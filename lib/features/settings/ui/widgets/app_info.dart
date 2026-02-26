import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/core/theme/app_theme.dart';
import 'package:atelet/features/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_solidart/flutter_solidart.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final appInfo = Resource<PackageInfo>(SettingsController.getAppInfo);

    return SignalBuilder(
      builder: (context, child) {
        return appInfo.state.when(
          loading: () => const LinearProgressIndicator(),
          error: (error, stackTrace) => Text(
            'Error: $error',
            style: TextStyle(color: context.theme.colorScheme.error),
          ),

          ready: (data) => Text(
            '${context.l.settings_version_label} ${data.version} - ${context.l.settings_build_label} ${data.buildNumber}',
          ),
        );
      },
    );
  }
}
