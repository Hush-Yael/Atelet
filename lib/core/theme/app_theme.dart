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

      bottomAppBarTheme: t.bottomAppBarTheme.copyWith(height: 60),

      bottomNavigationBarTheme: t.bottomNavigationBarTheme.copyWith(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),

      floatingActionButtonTheme: t.floatingActionButtonTheme.copyWith(
        elevation: 0,
        shape: const CircleBorder(),
      ),

      inputDecorationTheme: t.inputDecorationTheme.copyWith(filled: true),
    );
  }

  // Color-specific configurations
  static ThemeData _colorTheme({
    required ThemeData baseTheme,
    required Color primary,
    required Color onPrimary,
    required Color backgroundColor,
    required Color surfaceColor,
    required Color textColor,
    required Color textDisplayColor,
    required Color dividerColor,
    required Color cardColor,
    required Color inputFillColor,
    required Color inputEnabledBorderColor,
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

      appBarTheme: baseTheme.appBarTheme.copyWith(
        backgroundColor: surfaceColor,
        foregroundColor: textColor,
      ),

      navigationBarTheme: baseTheme.navigationBarTheme.copyWith(
        backgroundColor: surfaceColor,
        indicatorColor: primary,
        iconTheme: WidgetStateProperty.fromMap({
          WidgetState.selected: IconThemeData(color: onPrimary),
        }),
      ),

      bottomAppBarTheme: baseTheme.bottomAppBarTheme.copyWith(
        color: surfaceColor,
      ),

      bottomNavigationBarTheme: baseTheme.bottomNavigationBarTheme.copyWith(
        backgroundColor: surfaceColor,
        selectedItemColor: primary,
      ),

      dividerColor: dividerColor,
      cardColor: cardColor,

      floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),

      inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
        fillColor: inputFillColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ).copyWith(borderSide: BorderSide(color: primary, width: 2.0)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: inputEnabledBorderColor, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // Light theme
  static final ThemeData lightTheme = _colorTheme(
    baseTheme: _baseTheme(HuxTheme.lightTheme),
    primary: AppLightColors.primary,
    onPrimary: AppLightColors.onPrimary,
    backgroundColor: AppColors.paper.shade600,
    surfaceColor: AppColors.paper,
    textColor: AppLightColors.primary,
    textDisplayColor: AppColors.asphalt,
    dividerColor: AppColors.paper.shade800,
    cardColor: AppColors.paper,
    inputFillColor: AppColors.paper.shade700,
    inputEnabledBorderColor: Colors.grey.shade500,
  );

  // Dark theme
  static final ThemeData darkTheme = _colorTheme(
    baseTheme: _baseTheme(HuxTheme.darkTheme),
    primary: AppDarkColors.primary,
    onPrimary: AppDarkColors.onPrimary,
    backgroundColor: AppColors.asphalt.shade50,
    surfaceColor: AppColors.asphalt.shade100,
    textColor: AppColors.paper,
    textDisplayColor: AppColors.paper,
    dividerColor: AppColors.asphalt,
    cardColor: AppColors.asphalt.shade100,
    inputFillColor: AppColors.asphalt.shade100,
    inputEnabledBorderColor: Colors.grey.shade800,
  );
}

extension AppThemeBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}
