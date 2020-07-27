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

const String ROUTE_ROOT = '/';

const String ROUTE_ABOUT = '/about';
const String ROUTE_ART = '/art';
const String ROUTE_PHYSICS = '/physics';
const String ROUTE_HOME = '/home';
const String ROUTE_PROFILE = '/profile';
const String ROUTE_SEARCH = '/search';
const String ROUTE_SETTINGS = '/settings';
const String ROUTE_WELCOME = '/welcome';

class AppRouter {

  static const int BOTTOM_NAV_INDEX_HOME = 0;
  static const int BOTTOM_NAV_INDEX_SEARCH = 1;
  static const int BOTTOM_NAV_INDEX_PROFILE = 2;
  static const int BOTTOM_NAV_INDEX_ART = 3;

  static int selectedBottomNavIndex = 0;

  static int getBottomNavRouteIndexByName(String name) {
    switch (name) {
      case ROUTE_HOME:
        return BOTTOM_NAV_INDEX_HOME;
      case ROUTE_SEARCH:
        return BOTTOM_NAV_INDEX_SEARCH;
      case ROUTE_PROFILE:
        return BOTTOM_NAV_INDEX_PROFILE;
      case ROUTE_ART:
        return BOTTOM_NAV_INDEX_ART;
      default:
        return -1;
    }
  }

  static void navigateToBottomNavRoute(
      BuildContext context,
      String routeName, {
        Object arguments,
      }) {
    if (Navigator.canPop(context)) {
      print('navigateToBottomNavRoute - canPop -> ${routeName}');
      Navigator.popUntil(context, (route) => route.isFirst);
    } else {
      print('navigateToBottomNavRoute - cannotPop -> ${routeName}');
    }
    selectedBottomNavIndex = getBottomNavRouteIndexByName(routeName);
    Navigator.pushReplacementNamed(context, routeName);
  }

  static Route<dynamic> allRoutes(RouteSettings settings) {
    print('allRoutes -> ${settings.name}');
    switch (settings.name) {
      case ROUTE_WELCOME:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case ROUTE_ROOT:
      case ROUTE_HOME:
        selectedBottomNavIndex = BOTTOM_NAV_INDEX_HOME;
        return MaterialPageRoute(builder: (_) => HomePage());
      case ROUTE_SEARCH:
        selectedBottomNavIndex = BOTTOM_NAV_INDEX_SEARCH;
        return MaterialPageRoute(builder: (_) => SearchPage());
      case ROUTE_PROFILE:
        selectedBottomNavIndex = BOTTOM_NAV_INDEX_PROFILE;
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case ROUTE_ART:
        selectedBottomNavIndex = BOTTOM_NAV_INDEX_ART;
        return MaterialPageRoute(builder: (_) => ArtPage());
      case ROUTE_ABOUT:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case ROUTE_SETTINGS:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case ROUTE_PHYSICS:
        return MaterialPageRoute(builder: (_) => PhysicsCardDragPage());
      case ROUTE_ROOT:
        return MaterialPageRoute(builder: (_) => PhysicsCardDragPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}
