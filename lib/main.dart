import 'package:flutter/material.dart';
import 'package:hux/hux.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atelét',
      debugShowCheckedModeBanner: false,
      theme: HuxTheme.lightTheme.copyWith(
        textTheme: HuxTheme.lightTheme.textTheme.apply(fontFamily: 'Archivo'),
      ),
      darkTheme: HuxTheme.darkTheme.copyWith(
        textTheme: HuxTheme.darkTheme.textTheme.apply(fontFamily: 'Archivo'),
      ),
      themeMode: .system,
    );
  }
}
