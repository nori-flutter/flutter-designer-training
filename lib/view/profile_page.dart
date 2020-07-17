import 'package:flutter/material.dart';
import 'package:flutter_designer_training_app/theme/app_theme.dart';
import 'package:getwidget/getwidget.dart';

import 'base_page_state.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage> {

  Widget _contactButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      alignment: Alignment.center,
      child: GFButton(
        onPressed: () {
          // Navigator.pushReplacementNamed(context, ROUTE_PROFILE);
        },
        text: "Contact",
        shape: GFButtonShape.pills,
        size: GFSize.LARGE,
        fullWidthButton: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GFAvatar(
                      shape: GFAvatarShape.standard,
                      size: 60,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("First Name Last Name",
                    maxLines: 3,
                    style: TextStyle(
                      color: AppTheme.current.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Text("Phone: ",
                        style: TextStyle(
                            color: AppTheme.current.primaryTextColor,
                            fontWeight: FontWeight.bold)),
                    Text('1-123-456-7890',
                        style: TextStyle(
                            color: AppTheme.current.primaryTextColor)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Text("Email: ",
                        style: TextStyle(
                            color: AppTheme.current.primaryTextColor,
                            fontWeight: FontWeight.bold)),
                    Text('my@design.me',
                        style: TextStyle(
                            color: AppTheme.current.primaryTextColor)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _contactButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
