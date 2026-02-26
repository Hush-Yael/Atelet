import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.home.path,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainNavShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [AppRoutes.home]),
          StatefulShellBranch(routes: [AppRoutes.settings]),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}

class MainNavShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainNavShell({super.key, required this.navigationShell});

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,

      bottomNavigationBar: BottomAppBar(
        padding: .zero,
        notchMargin: 4.5,
        child: BottomNavigationBar(
          currentIndex: navigationShell.currentIndex,
          backgroundColor: Colors.transparent,
          onTap: _goBranch,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: context.l.router_home_label,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: context.l.router_settings_label,
            ),
          ],
        ),
      ),
    );
  }
}
