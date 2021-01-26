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
    CustomerSearch(),
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
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  EvaIcons.shoppingBag,
                  size: 30.0,
                  color: Colors.grey,
                ),
                //title: Text('Chat'),
              ),
              BottomNavigationBarItem(
                label: '',
                // onTap: () {},
                icon: Icon(
                  Icons.search,
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
