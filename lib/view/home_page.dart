import 'package:flutter/material.dart';
import 'package:flutter_designer_training_app/theme/app_theme.dart';
import 'package:getwidget/getwidget.dart';

import 'base_page_state.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.current.primaryHeaderBackgroundColor,
        title: Text('Home'),
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
                ListTile(
                    title: Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppTheme.current.primaryTextColor, fontWeight: FontWeight.bold),
                )),
                GFCard(
                  boxFit: BoxFit.cover,
                  imageOverlay: AssetImage('your asset image'),
                  title: GFListTile(
                    avatar: GFAvatar(),
                    title: Text('Card Title'),
                    subTitle: Text('subtitle'),
                  ),
                  content: Text(
                      "GFCards has three types of cards i.e, basic, with avataras and with overlay image"),
                  buttonBar: GFButtonBar(
//                  alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GFButton(
                        onPressed: () {},
                        text: 'View',
                      )
                    ],
                  ),
                ),
                GFCard(
                  boxFit: BoxFit.cover,
                  image: Image.asset('your asset image'),
                  title: GFListTile(
                      avatar:GFAvatar(),
                      title: Text('Card Title'),
                      icon: GFIconButton(
                        onPressed: null,
                        icon: Icon(Icons.favorite_border),
//                        type: GFType.transparent,
                      )
                  ),
                  content:Text( "Some quick example text to build on the card"),
                  buttonBar: GFButtonBar(
//                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GFButton(
                        onPressed: () {},
                        text: 'Read More',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
