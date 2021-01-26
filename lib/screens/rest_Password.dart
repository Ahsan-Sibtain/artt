import 'package:flutter/material.dart';
import 'package:art/component/constant.dart';
import 'package:art/component/button.dart';

class RestPassword extends StatefulWidget {
  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Ahsan"), //TODO:USER NAME
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
            Icons.settings, //TODO: SETTING ICON BUTTON
            color: Colors.white,
          )),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30.0, right: 20, bottom: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Image(
                image: AssetImage('images/logo.png'), //TODO: Logo Image
              ),
            ),
            Text("Reset Password", style: kTextStyleHeader),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Enter email address associated with your account, and we'll email you a link to reset your password",
              style: kLoginText,
            ),
            SizedBox(height: 15.0),
            Text("Email", style: kLoginText),
            SizedBox(height: 8.0),
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 330.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),

                //******* ENTER EMAIL TEXT FIELD
                //TODO:ENTER  EMAIL
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: kTxtField.copyWith(hintText: 'Enter your Email'),
                )),
            SizedBox(height: 15.0),
            Text("Phone Number", style: kLoginText),
            SizedBox(height: 8.0),
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 330.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),

                //******* Phone Number FIELD
                //TODO:ENTER  EMAIL
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      kTxtField.copyWith(hintText: 'Enter your Phone Number'),
                )),
            SizedBox(height: 25.0),
            Button(
              onPress: () {},
              buttonTitle: "Reset",
              colour: Color(0xFFFF3D3A3A),
            ),
          ],
        ),
      ),
    );
  }
}
