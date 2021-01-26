import 'package:flutter/material.dart';
import '../screens/Artist/add_Art.dart';
import 'package:flutter/cupertino.dart';
import 'package:art/component/Artist_tab.dart';
import '../screens/Artist/artist_notification.dart';
import 'package:art/screens/Artist/Artist_profile.dart';

class ArtistBottomBar extends StatefulWidget {
  @override
  _ArtistBottomBarState createState() => _ArtistBottomBarState();
}

class _ArtistBottomBarState extends State<ArtistBottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedTab = 0;
  final _pageOptions = [
    ArtistTab(),

    NewArt(),
    ArtistNotificationScreen(),
    // ArtistOffer(),

    ArtistProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.white,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            selectedItemColor: Colors.black,
            elevation: 2,
            onTap: (int index) {
              setState(() {
                _selectedTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  color: Colors.grey,
                ),
              ),
              // BottomNavigationBarItem(
              //   label: '',
              //   icon: Icon(
              //     EvaIcons.shoppingBag,
              //     size: 30.0,
              //     color: Colors.grey,
              //   ),
              //   //title: Text('Chat'),
              // ),
              BottomNavigationBarItem(
                label: '',
                // onTap: () {},
                icon: Icon(
                  Icons.add_circle,
                  size: 30.0,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                // onTap: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 30.0,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                // onTap: () {},
                icon: Icon(
                  Icons.perm_identity,
                  size: 30.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
