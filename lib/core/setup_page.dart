import 'package:atelet/core/theme/app_colors.dart';
import 'package:atelet/core/controllers/shared_preferences_controller.dart';
import 'package:atelet/core/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:disco/disco.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetupPage extends StatefulWidget {
  final StatefulWidget app;
  const SetupPage({super.key, required this.app});

  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  late final initialization = Future(() async {
    final prefs = await SharedPreferences.getInstance();
    return (preferences: prefs);
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        } else if (snapshot.hasError) {
          return Error(snapshot: snapshot);
        }

        final data = snapshot.data!;

        return ProviderScope(
          providers: [
            sharedPreferencesProvider(data.preferences),
            ThemeController.provider,
            LocaleController.provider,
          ],
          child: widget.app,
        );
      },
    );
  }
}

class Error extends StatelessWidget {
  final AsyncSnapshot snapshot;

  const Error({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.paper,
        body: Center(child: Text('Error: ${snapshot.error}')),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.paper,
        body: Center(
          child: CircularProgressIndicator(
            strokeWidth: 5.0,
            color: AppColors.asphalt,
          ),
        ),
      ),
    );
  }
}
