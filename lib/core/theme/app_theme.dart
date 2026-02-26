import 'package:atelet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hux/hux.dart';

final ThemeData appLightTheme = HuxTheme.lightTheme.copyWith(
  colorScheme: HuxTheme.lightTheme.colorScheme.copyWith(
    primary: AppLightColors.primary,
    onPrimary: AppLightColors.onPrimary,
  ),

  textTheme: HuxTheme.lightTheme.textTheme.apply(
    fontFamily: 'Archivo',
    bodyColor: AppLightColors.primary,
    displayColor: AppColors.asphalt,
  ),

  appBarTheme: HuxTheme.lightTheme.appBarTheme.copyWith(
    backgroundColor: AppColors.paper,
    foregroundColor: AppColors.asphalt,
  ),

  scaffoldBackgroundColor: AppColors.paper.shade600,

  navigationBarTheme: HuxTheme.lightTheme.navigationBarTheme.copyWith(
    backgroundColor: AppColors.paper,
    indicatorColor: AppLightColors.primary,
    height: 50,
    indicatorShape: const CircleBorder(),
    labelBehavior: .alwaysHide,
    iconTheme: WidgetStateProperty.fromMap({
      WidgetState.selected: IconThemeData(color: AppLightColors.onPrimary),
    }),
  ),

  cardColor: AppColors.paper,

  dividerColor: AppColors.paper.shade800,
);

final ThemeData appDarkTheme = HuxTheme.darkTheme.copyWith(
  colorScheme: HuxTheme.darkTheme.colorScheme.copyWith(
    primary: AppDarkColors.primary,
    onPrimary: AppDarkColors.onPrimary,
  ),

  textTheme: HuxTheme.darkTheme.textTheme.apply(
    fontFamily: 'Archivo',
    bodyColor: AppColors.paper,
    displayColor: AppColors.paper,
  ),

  appBarTheme: HuxTheme.darkTheme.appBarTheme.copyWith(
    backgroundColor: AppColors.asphalt.shade100,
    foregroundColor: AppColors.paper,
  ),

  scaffoldBackgroundColor: AppColors.asphalt.shade50,

  navigationBarTheme: HuxTheme.darkTheme.navigationBarTheme.copyWith(
    backgroundColor: AppColors.asphalt.shade100,
    indicatorColor: AppDarkColors.primary,
    height: 50,
    indicatorShape: const CircleBorder(),
    labelBehavior: .alwaysHide,
    iconTheme: WidgetStateProperty.fromMap({
      WidgetState.selected: IconThemeData(color: AppDarkColors.onPrimary),
    }),
  ),

  dividerColor: AppColors.asphalt,

  cardColor: AppColors.asphalt.shade100,
);

extension AppThemeBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}
