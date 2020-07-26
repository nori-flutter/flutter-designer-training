import 'package:flutter/material.dart';
import 'package:flutter_designer_training_app/theme/app_theme.dart';
import 'package:getwidget/getwidget.dart';

import 'base_page_state.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends BasePageState<SearchPage> {
  final List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.current.primaryHeaderBackgroundColor,
        title: Text('Search'),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(context),
      body: SafeArea(
        child: GFSearchBar(
          searchList: list,
          searchQueryBuilder: (query, list) {
            return list
                .where(
                    (item) => item.toLowerCase().contains(query.toLowerCase()))
                .toList();
          },
          overlaySearchListItemBuilder: (item) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                item,
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
          onItemSelected: (item) {
            setState(() {
              print('$item');
            });
          },
        ),
      ),
    );
  }
}
