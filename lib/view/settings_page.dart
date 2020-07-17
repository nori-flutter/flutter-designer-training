import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../theme/app_theme.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.brightness_medium,
                  color: AppTheme.current.primaryIconColor,
                  size: 30,
                ),
                title: Text(
                  'Dark Theme',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: GFToggle(
                  onChanged: (isDark){
                    isDark ? AppTheme.switchToLightTheme() : AppTheme.switchToDarkTheme();
                  },
                  value: AppTheme.current.isDark,
                  type: GFToggleType.ios,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
