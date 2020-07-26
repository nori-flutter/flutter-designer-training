import 'package:flutter/material.dart';

abstract class AppThemeBase {

  bool get isDark;

  ThemeData get theme;

  Color get primaryTextColor;
  Color get secondaryTextColor;

  Color get primaryBackgroundColor;
  Color get secondaryBackgroundColor;

  Color get primaryHeaderBackgroundColor;
  Color get secondaryHeaderBackgroundColor;

  Color get primaryDrawerBackgroundColor;
  Color get secondaryDrawerBackgroundColor;

  Color get primaryFooterBackgroundColor;
  Color get secondaryFooterBackgroundColor;

  Color get primaryButtonColor;
  Color get primaryButtonTextColor;

  Color get secondaryButtonColor;
  Color get secondaryButtonTextColor;

  Color get primaryIconColor;
  Color get secondaryIconColor;

  Color get bottomNavIconColor;
  Color get bottomNavIconSelectedColor;

  Color get bottomNavTextColor;
  Color get bottomNavTextSelectedColor;

  TextStyle get bottomNavTextStyle;
  TextStyle get bottomNavSelectedTextStyle;

  Color get drawerMenuItemTextColor;

  Color get favoriteOnIconColor;
  Color get favoriteOffIconColor;

}
