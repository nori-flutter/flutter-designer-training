import 'package:flutter/material.dart';

import './route/app_router.dart';
import 'theme/app_theme.dart';
import 'theme/app_theme_base.dart';

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  AppThemeBase _appTheme;

  @override
  void initState() {
    super.initState();
    _appTheme = AppTheme.current;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Designer\'s Training',
      theme: _appTheme.theme,
      onGenerateRoute: AppRouter.allRoutes,
      initialRoute: ROUTE_WELCOME,
    );
  }
}