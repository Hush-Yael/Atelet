import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static final asphalt = MaterialColor(0xff302f2c, {
    50: Color(0xff0f0e0d),
    100: Color(0xff181716),
    200: Color(0xff292825),
    300: Color(0xff383734),
    400: Color(0xff4b4945),
    500: Color(0xff5e5c57),
    600: Color(0xff686560),
    700: Color(0xff726f69),
    800: Color(0xff7e7c75),
    900: Color(0xff89867f),
    950: Color(0xff8e8b84),
  });

  static final paper = MaterialColor(0xffefede3, {
    50: Color(0xfffaf9f7),
    100: Color(0xfff7f6f2),
    200: Color(0xfff5f4ee),
    300: Color(0xfff2f1e9),
    400: Color(0xfff2f1e9),
    500: Color(0xffefede3),
    600: Color(0xffe2e0d3),
    700: Color(0xffd4d2c5),
    800: Color(0xffc6c4b8),
    900: Color(0xffbbb9ae),
    950: Color(0xffb3b1a6),
  });
}

class AppLightColors {
  const AppLightColors._();

  static final primary = AppColors.asphalt;
  static final onPrimary = AppColors.paper;
}

class AppDarkColors {
  const AppDarkColors._();

  static final primary = AppColors.paper;
  static final onPrimary = AppColors.asphalt;
}
