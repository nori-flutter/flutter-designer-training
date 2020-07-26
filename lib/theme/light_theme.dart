import 'package:flutter/material.dart';

import 'app_theme_base.dart';

class LightTheme implements AppThemeBase {

  LightTheme._internal();

  static final LightTheme _instance = new LightTheme._internal();

  factory LightTheme() {
    return _instance;
  }

  @override
  bool get isDark => false;

  @override
  ThemeData get theme {
    return ThemeData(
      primarySwatch: Colors.blue,
      backgroundColor: primaryBackgroundColor,
      iconTheme: IconThemeData(color: Colors.black87),
      unselectedWidgetColor: unselectedWidgetColor,
      accentColor: accentColor,
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  Color get unselectedWidgetColor => Colors.white70;// default: Colors.black54 - see ThemeData

  Color get accentColor => Colors.deepPurpleAccent;// default: Colors.blue[500] - see ThemeData

  @override
  Color get primaryTextColor => Colors.black;

  @override
  Color get secondaryTextColor => Colors.blue;

  @override
  Color get primaryBackgroundColor => Colors.white;

  @override
  Color get secondaryBackgroundColor => Colors.black12;

  @override
  Color get primaryDrawerBackgroundColor => primaryBackgroundColor;

  @override
  Color get secondaryDrawerBackgroundColor => secondaryBackgroundColor;

  @override
  Color get primaryHeaderBackgroundColor => Colors.indigo;

  @override
  Color get secondaryHeaderBackgroundColor => Colors.orange;

  @override
  Color get primaryFooterBackgroundColor => Colors.deepOrange;

  @override
  Color get secondaryFooterBackgroundColor => Colors.orange;

  @override
  Color get primaryButtonColor => Colors.blueAccent;

  @override
  Color get primaryButtonTextColor => Colors.white;

  @override
  Color get secondaryButtonColor => Colors.deepPurple;

  @override
  Color get secondaryButtonTextColor => Colors.white;

  @override
  Color get primaryIconColor => Colors.indigo;

  @override
  Color get secondaryIconColor => Colors.indigoAccent;

  @override
  Color get bottomNavIconColor => Colors.grey;

  @override
  Color get bottomNavIconSelectedColor => Colors.black;

  @override
  TextStyle get bottomNavSelectedTextStyle => TextStyle(color: Colors.black);

  @override
  Color get bottomNavTextColor => Colors.grey;

  @override
  Color get bottomNavTextSelectedColor => Colors.black;

  @override
  TextStyle get bottomNavTextStyle => TextStyle(color: Colors.grey);

  @override
  Color get drawerMenuItemTextColor => Colors.black;

  @override
  Color get favoriteOnIconColor => Colors.yellow;

  @override
  Color get favoriteOffIconColor => null;
}
