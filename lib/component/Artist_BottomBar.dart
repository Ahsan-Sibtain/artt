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
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(fontSize: 12,color: Color(0xFFFF3D3A3A),),
            selectedItemColor: Color(0xFFFF3D3A3A),
            elevation: 2,
            onTap: (int index) {
              setState(() {
                _selectedTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
              ),

              BottomNavigationBarItem(
                label: 'Add Art',
                // onTap: () {},
                icon: Icon(
                  Icons.add_circle,
                  size: 30.0,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Notification',
                // onTap: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                // onTap: () {},
                icon: Icon(
                  Icons.perm_identity,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
