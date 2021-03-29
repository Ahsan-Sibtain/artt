import 'package:art/component/button.dart';
import 'package:art/component/colors.dart';
import 'package:art/screens/Artist/profile_update.dart';
import 'package:art/screens/Customer/profile_update.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:art/component/constant.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name = "Sohail ahmad";
    String country = "Pakistan";
    String phoneNo = "03012525257";
    String email = "sohailAhmad681@gmail.com";


    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.red, //change your color here
          ),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
            body: Column(
              children: [
                SizedBox(height: height/30,),
                Center(
                  child: Container(
      child: CircleAvatar(
        radius: height/25,
        backgroundImage: AssetImage("images/ava.png"), //TODO: Profile Pic
      ),
    ),
                ),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top:12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.grey,size: 25,),
                      SizedBox(width: width/80,),
                      Text.rich(
                        TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: "Name",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 45,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\n$name",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 50,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top:12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.grey,size: 25,),
                      SizedBox(width: width/80,),
                      Text.rich(
                        TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: "Email",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 45,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\n$email",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 50,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top:12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_city, color: Colors.grey,size: 25,),
                      SizedBox(width: width/80,),
                      Text.rich(
                        TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: "Country",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 45,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\n$country",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 50,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),



                //phone
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top:12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.grey,size: 25,),
                      SizedBox(width: width/80,),
                      Text.rich(
                        TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: "Phone",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 45,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\n$phoneNo",
                            style:
                            TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height / 50,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height/25,),
                Button(
                  text: Text(
                    "Edit",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileUpdate()));
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),




              ],
            )
    );
  }
}
