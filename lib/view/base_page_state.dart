import 'package:flutter/material.dart';

import '../route/app_router.dart';
import '../theme/app_theme.dart';

abstract class BasePageState <T extends StatefulWidget> extends State {

  Widget drawer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
//      color: Theme.of(context).backgroundColor,
      color: AppTheme.current.primaryBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 50,
              child: CircleAvatar(
                backgroundColor: Colors.indigoAccent,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              AppRouter.navigateToBottomNavRoute(context, ROUTE_HOME);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Search',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              AppRouter.navigateToBottomNavRoute(context, ROUTE_SEARCH);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              AppRouter.navigateToBottomNavRoute(context, ROUTE_PROFILE);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.art_track,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Art',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              AppRouter.navigateToBottomNavRoute(context, ROUTE_ART);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.videogame_asset,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Physics',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              Navigator.pushNamed(context, ROUTE_PHYSICS);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'About',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              Navigator.pushNamed(context, ROUTE_ABOUT);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: AppTheme.current.primaryIconColor,
              size: AppTheme.drawerMenuItemIconSize,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: AppTheme.drawerMenuItemTextSize, color: AppTheme.current.drawerMenuItemTextColor),
            ),
            onTap: () {
              Navigator.pushNamed(context, ROUTE_SETTINGS);
            },
          ),
        ],
      ),
    );
  }

  void _onBottomNavigationTapped(int index) {
    if (index == AppRouter.selectedBottomNavIndex ) {
      print('_onBottomNavigationTapped - same:${index}');
      return;
    }
    setState(() {
      print('_onBottomNavigationTapped - before:${AppRouter.selectedBottomNavIndex}, after:${index}');
      AppRouter.selectedBottomNavIndex = index;
      switch (index) {
        case 1:
          Navigator.pushReplacementNamed(
              context, ROUTE_SEARCH);
          break;
        case 2:
          Navigator.pushReplacementNamed(
              context, ROUTE_PROFILE);
          break;
        case 3:
          Navigator.pushReplacementNamed(
              context, ROUTE_ART);
          break;
        default:
          Navigator.pushReplacementNamed(
              context, ROUTE_HOME);
          break;
      }
    });
  }

  Widget bottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          title: Text('Profile'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.art_track),
          title: Text('Art'),
        ),
      ],
      currentIndex: AppRouter.selectedBottomNavIndex,
      showUnselectedLabels: true,
      unselectedItemColor: AppTheme.current.bottomNavIconColor,
      unselectedLabelStyle: AppTheme.current.bottomNavTextStyle,
      selectedItemColor: AppTheme.current.bottomNavIconSelectedColor,
      selectedLabelStyle: AppTheme.current.bottomNavSelectedTextStyle,
      onTap: _onBottomNavigationTapped,
    );
  }

}
