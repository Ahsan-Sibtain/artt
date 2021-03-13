import 'package:flutter/material.dart';
import 'package:art/component/list_data.dart';

class ArtistNotificationScreen extends StatefulWidget {
  @override
  _ArtistNotificationScreenState createState() =>
      _ArtistNotificationScreenState();
}

class _ArtistNotificationScreenState extends State<ArtistNotificationScreen> {
  NotificationData _notification = NotificationData();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Notifications"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width/1.1,
            child: Column(

              children: [
                SizedBox(height: height/70,),
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
      ),
    );
  }
}
