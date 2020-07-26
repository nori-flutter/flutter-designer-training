import 'package:flutter/material.dart';
import 'package:flutter_designer_training_app/theme/app_theme.dart';

class NotFoundPage extends StatefulWidget {
  NotFoundPage({Key key}) : super(key: key);

  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.current.primaryHeaderBackgroundColor,
        title: Text('Page not found'),
      ),
    );
  }
}
