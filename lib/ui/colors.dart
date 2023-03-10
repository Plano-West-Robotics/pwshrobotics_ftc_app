import 'package:flutter/material.dart';
import 'package:dynamic_themes/dynamic_themes.dart';

class AppThemes {
  static const int LightBlue = 0;
  static const int Dark = 1;
}
final themeCollection = ThemeCollection(
  themes: {
    AppThemes.LightBlue: ThemeData(primarySwatch: Colors.blue),
    AppThemes.Dark: ThemeData.dark(),
  },
  fallbackTheme: ThemeData.light(),
);