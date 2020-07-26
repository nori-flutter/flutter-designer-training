import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'base_page_state.dart';
import '../theme/app_theme.dart';

class ArtPage extends StatefulWidget {
  ArtPage({Key key}) : super(key: key);

  @override
  _ArtPageState createState() => _ArtPageState();
}

class _ArtPageState extends BasePageState<ArtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.current.primaryHeaderBackgroundColor,
        title: Text('Art Page'),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.zero,
            color: AppTheme.current.primaryBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: GFImageOverlay(
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      image: AssetImage('assets/images/art.png')),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GFImageOverlay(
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      image: AssetImage('assets/images/art.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
