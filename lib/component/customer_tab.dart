import 'package:flutter/material.dart';
import 'package:art/screens/Customer/customer_offerSent.dart';
import 'package:art/screens/Customer/customer_AcceptedOrder.dart';
import 'package:art/screens/Customer/customer_CancelOrder.dart';

class CustomerTab extends StatefulWidget {
  @override
  _CustomerTabState createState() => _CustomerTabState();
}

class _CustomerTabState extends State<CustomerTab> {
  String status;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          title: Text("Orders"),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
              Icons.settings,
              color: Colors.white,
            )),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: ("Offer Sent"),
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
            // Text("helo"),
            SentOrders(),
            OrderAccepted(),
            OrderCancel(),
          ],
        ),
      ),
    );
  }
//
}

//*******************
