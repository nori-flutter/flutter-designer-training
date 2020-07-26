import 'package:flutter/material.dart';

import 'app_theme_base.dart';

class DarkTheme implements AppThemeBase {

  DarkTheme._internal();

  static final DarkTheme _instance = new DarkTheme._internal();

  factory DarkTheme() {
    return _instance;
  }

  @override
  bool get isDark => true;

  @override
  Color get primaryTextColor => Colors.white;

  @override
  Color get secondaryTextColor => Colors.blue;

  @override
  Color get primaryBackgroundColor => Colors.black87;

  @override
  Color get secondaryBackgroundColor => Colors.orange;

  @override
  Color get primaryDrawerBackgroundColor => primaryBackgroundColor;

  @override
  Color get secondaryDrawerBackgroundColor => secondaryBackgroundColor;

  @override
  Color get primaryHeaderBackgroundColor => Colors.deepPurple;

  @override
  Color get secondaryHeaderBackgroundColor => Colors.deepPurpleAccent;

  @override
  Color get primaryFooterBackgroundColor => Colors.deepPurple;

  @override
  Color get secondaryFooterBackgroundColor => Colors.deepPurpleAccent;

  @override
  Color get primaryButtonColor => Colors.deepPurple;

  @override
  Color get primaryButtonTextColor => Colors.white;

  @override
  Color get secondaryButtonColor => Colors.deepPurple;

  @override
  Color get secondaryButtonTextColor => Colors.white;

  @override
  Color get primaryIconColor => Colors.yellow;

  @override
  Color get secondaryIconColor => Colors.yellowAccent;

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
  Color get drawerMenuItemTextColor => Colors.white;

  @override
  Color get favoriteOnIconColor => Colors.yellow;

  @override
  Color get favoriteOffIconColor => null;

}
