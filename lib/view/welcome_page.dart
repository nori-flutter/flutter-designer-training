import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../route/app_router.dart';
import '../theme/app_theme.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _startButton() {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, ROUTE_HOME);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xff000000).withAlpha(50),
                  offset: Offset(0, 2),
                  blurRadius: 20,
                  spreadRadius: 0)
            ],
            color: AppTheme.current.primaryButtonColor),
        child: Text(
          'Start',
          style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome_bg.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white.withAlpha(236),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 20),
                  _startButton(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
