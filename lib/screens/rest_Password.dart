import 'package:art/component/CustomTextField.dart';
import 'package:art/component/colors.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),
                //*******************LOGIN IN TO ART FOR you TEXT
                Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: height / 40),
                ),
                SizedBox(height: height / 70),
                Container(
                  width: width/1.2,
                  child: Text(
                    'Enter email address associated with your account, and we will email you a link to reset your password',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: height / 50),
                  ),
                ),
                SizedBox(height: height / 70),
                //************* EMAIL TEXT
                Text("Full Name",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "Enter Your Name",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),

                //************* PASSWORD TEXT
                Text("Phone Number",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),

                //************* PASSWORD TEXT

                //TODO: LOGIN BUTTON

                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "Enter your Phone Number",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 25),
                Button(
                  text: Text(
                    "Reset",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/naviga");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor2,
                  disbaleColor: buttonColor2,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
