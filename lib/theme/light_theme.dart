import 'package:flutter/material.dart';

import 'app_theme_base.dart';

class LightTheme implements AppThemeBase {

  LightTheme._internal();

  static final LightTheme _instance = new LightTheme._internal();

  factory LightTheme() {
    return _instance;
  }

  @override
  Color get primaryTextColor => Colors.black;

  @override
  Color get secondaryTextColor => Colors.blue;

  @override
  Color get primaryBackgroundColor => Colors.white;

  @override
  Color get secondaryBackgroundColor => Colors.orange;

  @override
  Color get primaryHeaderBackgroundColor => Colors.deepOrange;

  @override
  Color get secondaryHeaderBackgroundColor => Colors.orange;

  @override
  Color get primaryFooterBackgroundColor => Colors.deepOrange;

  @override
  Color get secondaryFooterBackgroundColor => Colors.orange;

  @override
  Color get primaryButtonColor => Colors.green;

  @override
  Color get secondaryButtonColor => Colors.deepPurple;

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

}