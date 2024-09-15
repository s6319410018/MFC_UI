import 'package:flutter/material.dart';
import 'package:mfc/AppThemes/text_theme.dart';
import 'navigationbar_them.dart';

class AppThemes {
  static final themelight = ThemeData(
      navigationBarTheme: CustomNavigationBarTheme.navigationBarThemeData,
      primaryTextTheme: CustomTextTheme.textTheme);

  static final themedark = ThemeData(
      navigationBarTheme: CustomNavigationBarTheme.navigationBarThemeData,
      primaryTextTheme: CustomTextTheme.textTheme);
}
