import 'package:flutter/material.dart';

import 'app_theme_base.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme {
  AppTheme._internal();

  static final AppTheme _instance = new AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  static AppThemeBase _currentTheme = LightTheme();

  static AppThemeBase get current {
    return _currentTheme;
  }

  static AppThemeBase switchToDefaultTheme() {
    _currentTheme = LightTheme();
    return _currentTheme;
  }

  static AppThemeBase switchToDarkTheme() {
    _currentTheme = DarkTheme();
    return _currentTheme;
  }

  static AppThemeBase switchToLightTheme() {
    _currentTheme = LightTheme();
    return _currentTheme;
  }

  static const TextStyle h1TextStyle = TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  static const TextStyle h2TextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle h3TextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle h4TextStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const TextStyle drawerMenuItemTextStyle = TextStyle(fontSize: 20);
}
