import 'package:flutter/widgets.dart';
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

  static Route home = Route(name: 'home', path: '/', widget: HomeScreen());

  static Route settings = Route(
    name: 'settings',
    path: '/settings',
    widget: SettingsScreen(),
  );
}
