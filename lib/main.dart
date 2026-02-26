import 'package:flutter/material.dart';
import 'package:atelet/core/router/app_router.dart';
import 'package:flutter_solidart/flutter_solidart.dart';
import 'package:atelet/core/setup_page.dart';
import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/core/controllers/theme_controller.dart';
import 'package:atelet/core/theme/app_theme.dart';

void main() async {
  runApp(const SetupPage(app: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = LocaleController.provider.of(
      context,
    );
    final ThemeController theme = ThemeController.provider.of(context);

    return SignalBuilder(
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Atelét',
          localizationsDelegates: LocaleController.localizationsDelegates,
          supportedLocales: LocaleController.supportedLocales,
          localeListResolutionCallback:
              LocaleController.localeListResolutionCallback,
          locale: localeController.currentLocale,
          routerConfig: AppRouter.router,
          theme: appLightTheme,
          darkTheme: appDarkTheme,
          themeMode: theme.themeMode.value,
        );
      },
    );
  }
}
