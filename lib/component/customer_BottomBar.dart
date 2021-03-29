import 'package:art/screens/Customer/customer_Search.dart';
import 'package:art/screens/Customer/home_customer.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:art/screens/Customer/notification.dart';
import 'customer_tab.dart';

import 'package:flutter/cupertino.dart';

import 'package:art/screens/Customer/profile.dart';

class CustomerBottomBar extends StatefulWidget {
  @override
  _CustomerBottomBarState createState() => _CustomerBottomBarState();
}

class _CustomerBottomBarState extends State<CustomerBottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedTab = 0;
  final _pageOptions = [
    CustomerHome(),
    CustomerTab(),
    customerSearch(),
    NotificationScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
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
                // size: 22.0,
                // color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(
                EvaIcons.shoppingBag,
                // size: 22.0,
                // color: Colors.grey,
              ),
              //title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              // onTap: () {},
              icon: Icon(
                Icons.search,
                // size: 22.0,
                // color: Colors.grey,/
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              // onTap: () {},
              icon: Icon(
                Icons.notifications,
                // size: 22.0,
                // color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              // onTap: () {},
              icon: Icon(
                Icons.perm_identity,
                // size: 22.0,
                // color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
