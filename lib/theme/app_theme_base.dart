import 'package:flutter/material.dart';

abstract class AppThemeBase {

  Color get primaryTextColor;
  Color get secondaryTextColor;

  Color get primaryBackgroundColor;
  Color get secondaryBackgroundColor;

  Color get primaryHeaderBackgroundColor;
  Color get secondaryHeaderBackgroundColor;

  Color get primaryFooterBackgroundColor;
  Color get secondaryFooterBackgroundColor;

  Color get primaryButtonColor;
  Color get secondaryButtonColor;

  Color get primaryIconColor;
  Color get secondaryIconColor;

  Color get bottomNavIconColor;
  Color get bottomNavIconSelectedColor;

  Color get bottomNavTextColor;
  Color get bottomNavTextSelectedColor;

  TextStyle get bottomNavTextStyle;
  TextStyle get bottomNavSelectedTextStyle;

}
