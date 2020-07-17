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
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Home',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              selectedBottomNavIndex = 0;
              Navigator.popAndPushNamed(context, ROUTE_HOME);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Search',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              selectedBottomNavIndex = 1;
              Navigator.popAndPushNamed(context, ROUTE_SEARCH);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Profile',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              selectedBottomNavIndex = 2;
              Navigator.popAndPushNamed(context, ROUTE_PROFILE);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.art_track,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Art',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              selectedBottomNavIndex = 3;
              Navigator.popAndPushNamed(context, ROUTE_ART);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.videogame_asset,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Physics',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              Navigator.pushNamed(context, ROUTE_PHYSICS);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'About',
              style: AppTheme.drawerMenuItemTextStyle,
            ),
            onTap: () {
              Navigator.pushNamed(context, ROUTE_ABOUT);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: AppTheme.current.primaryIconColor,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: AppTheme.drawerMenuItemTextStyle,
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
    setState(() {
      print('_onBottomNavigationTapped - before:${selectedBottomNavIndex}, after:${index}');
      selectedBottomNavIndex = index;
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
      currentIndex: selectedBottomNavIndex,
      showUnselectedLabels: true,
      unselectedItemColor: AppTheme.current.bottomNavIconColor,
      unselectedLabelStyle: AppTheme.current.bottomNavTextStyle,
      selectedItemColor: AppTheme.current.bottomNavIconSelectedColor,
      selectedLabelStyle: AppTheme.current.bottomNavSelectedTextStyle,
      onTap: _onBottomNavigationTapped,
    );
  }

}
