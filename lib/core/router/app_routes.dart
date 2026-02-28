import 'package:atelet/features/routines/routine_form_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:atelet/features/home/ui/home_screen.dart';
import 'package:atelet/features/settings/ui/settings_screen.dart';
import 'package:go_router/go_router.dart';

class Route extends GoRoute {
  Route({
    required String super.name,
    required super.path,
    Widget? widget,
    Widget Function(BuildContext, GoRouterState)? builder,
  }) : super(
         builder:
             builder ?? (context, state) => widget ?? const SizedBox.shrink(),
       );
}

class AppRoutes {
  AppRoutes._();

  static Route home = Route(
    name: 'home',
    path: '/',
    widget: const HomeScreen(),
  );

  static Route settings = Route(
    name: 'settings',
    path: '/settings',
    widget: const SettingsScreen(),
  );

  static Route newRoutine = Route(
    name: 'new-routine',
    path: '/new-routine',
    widget: RoutineFormScreen(),
  );
}
