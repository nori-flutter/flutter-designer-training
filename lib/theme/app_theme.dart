import 'app_theme_base.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme {
  AppTheme._();

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

  static const double drawerMenuItemIconSize = 30;
  static const double drawerMenuItemTextSize = 20;
}
