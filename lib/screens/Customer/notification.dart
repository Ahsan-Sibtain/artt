import 'package:flutter/material.dart';
import 'package:art/component/list_data.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationData _notification = NotificationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: _notification.getLength(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                "${_notification.getImage(index)}",
                              ),
                              radius: 30.0,
                            ),
                            title: Text(
                              //TODO:ORDER STATUS
                              "${_notification.getOrder(index)}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                            //TODO: Order Number and date
                            subtitle: Text(
                              "${_notification.getMessage(index)}",
                              // textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      );
                    }),
              ),
              Divider(
                thickness: 2.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
