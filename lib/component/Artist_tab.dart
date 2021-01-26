import 'package:art/screens/Artist/artist_AcceptedOrder.dart';
import 'package:art/screens/Artist/artist_canceledOrder.dart';
import 'package:art/screens/Customer/customer_login.dart';
import 'package:flutter/material.dart';
import 'package:art/screens/Artist/artist_home.dart';

class ArtistTab extends StatefulWidget {
  @override
  _ArtistTabState createState() => _ArtistTabState();
}

class _ArtistTabState extends State<ArtistTab> {
  String status;
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          title: Text("Home"),
          centerTitle: true,
          actions: [
            Row(
              children: [
                Switch(
                  //TODO: Availability BUTTON
                  // title: Text('Out of Stock'),
                  value: _switch,
                  onChanged: (bool value) {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerLogin()));
                    });
                  },
                ),
                Text(
                  "Artist",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(
                  width: 10.0,
                )
              ],
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: ("home "),
              ),
              Tab(
                text: ("Accepted"),
              ),
              Tab(
                text: ("Canceled"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text("hello"),
            HomeScreen(),
            AcceptedOrder(),
            // ShippedOrders(),
            CancelOrder(),
          ],
        ),
      ),
    );
  }
//
}

//*******************
