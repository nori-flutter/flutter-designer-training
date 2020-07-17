import 'package:flutter/material.dart';

import '../view/art_page.dart';
import '../view/about_page.dart';
import '../view/physics_card_drag_page.dart';
import '../view/home_page.dart';
import '../view/not_found_page.dart';
import '../view/profile_page.dart';
import '../view/search_page.dart';
import '../view/settings_page.dart';
import '../view/welcome_page.dart';

const String ROUTE_ABOUT = '/about';
const String ROUTE_ART = '/art';
const String ROUTE_PHYSICS = '/physics';
const String ROUTE_HOME = '/home';
const String ROUTE_PROFILE = '/profile';
const String ROUTE_SEARCH = '/search';
const String ROUTE_SETTINGS = '/settings';
const String ROUTE_WELCOME = '/welcome';

int selectedBottomNavIndex = 0;

class AppRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_WELCOME:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case ROUTE_HOME:
        selectedBottomNavIndex = 0;
        return MaterialPageRoute(builder: (_) => HomePage());
      case ROUTE_SEARCH:
        selectedBottomNavIndex = 1;
        return MaterialPageRoute(builder: (_) => SearchPage());
      case ROUTE_PROFILE:
        selectedBottomNavIndex = 2;
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case ROUTE_ART:
        selectedBottomNavIndex = 3;
        return MaterialPageRoute(builder: (_) => ArtPage());
      case ROUTE_ABOUT:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case ROUTE_SETTINGS:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case ROUTE_PHYSICS:
        return MaterialPageRoute(builder: (_) => PhysicsCardDragPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}
