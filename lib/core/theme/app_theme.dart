import 'package:atelet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hux/hux.dart';

class SharedThemeData {
  SharedThemeData._();
}

class AppTheme {
  AppTheme._();

  // Base theme configuration (shared between light and dark)
  static ThemeData _baseTheme(ThemeData t) {
    return t.copyWith(
      textTheme: t.textTheme.apply(fontFamily: 'Archivo'),

      appBarTheme: t.appBarTheme.copyWith(centerTitle: false),

      navigationBarTheme: t.navigationBarTheme.copyWith(
        height: 50,
        indicatorShape: const CircleBorder(),
        labelBehavior: .alwaysHide,
      ),
    );
  }

  // Color-specific configurations
  static ThemeData _colorTheme({
    required ThemeData baseTheme,
    required Color primary,
    required Color onPrimary,
    required Color backgroundColor,
    required Color textColor,
    required Color textDisplayColor,
    required Color dividerColor,
    required Color cardColor,
  }) {
    return baseTheme.copyWith(
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: primary,
        onPrimary: onPrimary,
      ),

      scaffoldBackgroundColor: backgroundColor,

      textTheme: baseTheme.textTheme.apply(
        bodyColor: textColor,
        displayColor: textDisplayColor,
      ),

      dividerColor: dividerColor,
      cardColor: cardColor,
    );
  }

  // Light theme
  static final ThemeData lightTheme = _colorTheme(
    baseTheme: _baseTheme(HuxTheme.lightTheme),
    primary: AppLightColors.primary,
    onPrimary: AppLightColors.onPrimary,
    backgroundColor: AppColors.paper.shade600,
    textColor: AppLightColors.primary,
    textDisplayColor: AppColors.asphalt,
    dividerColor: AppColors.paper.shade800,
    cardColor: AppColors.paper,
  );

  // Dark theme
  static final ThemeData darkTheme = _colorTheme(
    baseTheme: _baseTheme(HuxTheme.darkTheme),
    primary: AppDarkColors.primary,
    onPrimary: AppDarkColors.onPrimary,
    backgroundColor: AppColors.asphalt.shade50,
    textColor: AppColors.paper,
    textDisplayColor: AppColors.paper,
    dividerColor: AppColors.asphalt,
    cardColor: AppColors.asphalt.shade100,
  );
}

extension AppThemeBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}
