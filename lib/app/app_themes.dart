import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppTheme.GreenLight: ThemeData(
    primaryColor: Colors.green,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.light,
    ),
  ),
  AppTheme.GreenDark: ThemeData(
    primaryColor: Colors.green[700],
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green[700]!,
      brightness: Brightness.dark,
    ),
  ),
  AppTheme.BlueLight: ThemeData(
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
  ),
  AppTheme.BlueDark: ThemeData(
    primaryColor: Colors.indigo,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.dark,
    ),
  ),
};
