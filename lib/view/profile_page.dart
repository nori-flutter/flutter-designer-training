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

  bool _isFavorite = false;

  Widget _contactButton(String label) {
    return GFButton(
      onPressed: () {
        // Navigator.pushReplacementNamed(context, ROUTE_PROFILE);
      },
      text: label,
      shape: GFButtonShape.standard,
      type: GFButtonType.outline,
      size: GFSize.LARGE,
      fullWidthButton: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.current.primaryHeaderBackgroundColor,
        title: Text('Profile Page'),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            color: AppTheme.current.primaryBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
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
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            backgroundColor: Colors.indigo,
                            shape: GFAvatarShape.standard,
                            size: 70,
                          ),
                          Expanded(
                            child: IconButton(
                              iconSize: 36,
                              alignment: Alignment.centerRight,
                              icon: Icon(
                                _isFavorite
                                    ? Icons.star
                                    : Icons.star_border,
                                color: _isFavorite
                                    ? AppTheme.current.favoriteOnIconColor
                                    : AppTheme.current.favoriteOffIconColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite = !_isFavorite;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("First Name Last Name",
                          maxLines: 3,
                          style: TextStyle(
                            color: AppTheme.current.primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text("Phone: ",
                              style: TextStyle(
                                  color: AppTheme.current.primaryTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('1-123-456-7890',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppTheme.current.primaryTextColor)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text("Email: ",
                              style: TextStyle(
                                  color: AppTheme.current.primaryTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('my@design.me',
                              style: TextStyle(
                                color: AppTheme.current.primaryTextColor,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: _contactButton('Contact'),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: _contactButton('Appointment'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
//                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff000000).withAlpha(50),
                            offset: Offset(0, 2),
                            blurRadius: 20,
                            spreadRadius: 0)
                      ], color: AppTheme.current.primaryButtonColor),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    childrenPadding: EdgeInsets.zero,
                    title: Container(
                      child: Text(
                        "Description",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppTheme.current.primaryButtonTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        color: AppTheme.current.primaryBackgroundColor,
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra euismod mi in porta. Nulla egestas diam auctor rhoncus sollicitudin. Ut congue facilisis felis, eu malesuada ante porttitor at. Nunc tincidunt lectus at ex molestie, non ultricies leo laoreet. In ullamcorper erat dolor, nec mollis velit efficitur id. Aliquam sem turpis, congue a sem id, facilisis imperdiet mi. Morbi vehicula ornare metus et tristique. Morbi odio sem, ornare et dolor et, convallis fermentum est. Aenean felis tortor, feugiat ut laoreet nec, ullamcorper in quam. Maecenas luctus urna lacus, ut posuere mauris bibendum ut. Mauris ac tincidunt lectus, nec facilisis risus. Sed dignissim mauris aliquet orci aliquet, ac viverra lectus luctus. Aliquam euismod sem ut urna rhoncus, quis pulvinar tellus tristique. Praesent vel auctor nulla. Phasellus id bibendum diam, ut rhoncus arcu.',
                            style: TextStyle(
                                color: AppTheme.current.primaryTextColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
//                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff000000).withAlpha(50),
                            offset: Offset(0, 2),
                            blurRadius: 20,
                            spreadRadius: 0)
                      ], color: AppTheme.current.primaryButtonColor),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    childrenPadding: EdgeInsets.zero,
                    title: Container(
                      child: Text(
                        "Experiences",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppTheme.current.primaryButtonTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        color: AppTheme.current.primaryBackgroundColor,
                        child: RichText(
                          text: TextSpan(
                            text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra euismod mi in porta. Nulla egestas diam auctor rhoncus sollicitudin. Ut congue facilisis felis, eu malesuada ante porttitor at. Nunc tincidunt lectus at ex molestie, non ultricies leo laoreet. In ullamcorper erat dolor, nec mollis velit efficitur id. Aliquam sem turpis, congue a sem id, facilisis imperdiet mi. Morbi vehicula ornare metus et tristique. Morbi odio sem, ornare et dolor et, convallis fermentum est. Aenean felis tortor, feugiat ut laoreet nec, ullamcorper in quam. Maecenas luctus urna lacus, ut posuere mauris bibendum ut. Mauris ac tincidunt lectus, nec facilisis risus. Sed dignissim mauris aliquet orci aliquet, ac viverra lectus luctus. Aliquam euismod sem ut urna rhoncus, quis pulvinar tellus tristique. Praesent vel auctor nulla. Phasellus id bibendum diam, ut rhoncus arcu.',
                            style: TextStyle(
                                color: AppTheme.current.primaryTextColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
//                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff000000).withAlpha(50),
                            offset: Offset(0, 2),
                            blurRadius: 20,
                            spreadRadius: 0)
                      ], color: AppTheme.current.primaryButtonColor),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    childrenPadding: EdgeInsets.zero,
                    title: Container(
                      child: Text(
                        "Education",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppTheme.current.primaryButtonTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        color: AppTheme.current.primaryBackgroundColor,
                        child: RichText(
                          text: TextSpan(
                            text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra euismod mi in porta. Nulla egestas diam auctor rhoncus sollicitudin. Ut congue facilisis felis, eu malesuada ante porttitor at. Nunc tincidunt lectus at ex molestie, non ultricies leo laoreet. In ullamcorper erat dolor, nec mollis velit efficitur id. Aliquam sem turpis, congue a sem id, facilisis imperdiet mi. Morbi vehicula ornare metus et tristique. Morbi odio sem, ornare et dolor et, convallis fermentum est. Aenean felis tortor, feugiat ut laoreet nec, ullamcorper in quam. Maecenas luctus urna lacus, ut posuere mauris bibendum ut. Mauris ac tincidunt lectus, nec facilisis risus. Sed dignissim mauris aliquet orci aliquet, ac viverra lectus luctus. Aliquam euismod sem ut urna rhoncus, quis pulvinar tellus tristique. Praesent vel auctor nulla. Phasellus id bibendum diam, ut rhoncus arcu.',
                            style: TextStyle(
                                color: AppTheme.current.primaryTextColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
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
