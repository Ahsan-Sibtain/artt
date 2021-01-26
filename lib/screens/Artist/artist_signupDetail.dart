import 'package:art/component/button.dart';
import 'package:art/component/constant.dart';
import 'artist_signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistSignUpDetail extends StatefulWidget {
  @override
  _ArtistSignUpDetailState createState() => _ArtistSignUpDetailState();
}

class _ArtistSignUpDetailState extends State<ArtistSignUpDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180.0,
                child: Image(
                  image: AssetImage('images/logo.png'), //TODO: Logo Image
                ),
              ),
              //*******************LOGIN IN TO ART FOR you TEXT
              Row(
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Login in to ', style: kTextSpanGray),
                        TextSpan(text: 'Art', style: kTextSpanBlue),
                        TextSpan(
                          text: 'Lik',
                          style: kTextSpanRed,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              //************* NAME TEXT Filed

              Text("Fullname", style: kLoginText),
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

                  //***** ENTER NAME TEXT FIELD
                  //TODO: ENTER  NAME
                  child: TextFormField(
                    decoration: kTxtField.copyWith(hintText: 'Enter your Name'),
                  )),
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

                  //***** ENTER EMAIL TEXT FIELD
                  //TODO:ENTER  EMAIL
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        kTxtField.copyWith(hintText: 'Enter your Email'),
                  )),

              SizedBox(height: 15.0),

              Text("City", style: kLoginText),
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

                  //***** ENTER CITY TEXT FIELD
                  //TODO: ENTER CITY
                  child: TextFormField(
                    decoration: kTxtField.copyWith(hintText: 'Enter your City'),
                  )),

              SizedBox(height: 15.0),

              //************* PASSWORD TEXT
              Text("Password", style: kLoginText),
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

                  //***** ENTER PASSWORD TEXT FIELD
                  //TODO: ENTER PASSWORD
                  child: TextFormField(
                    obscureText: true,
                    decoration: kTxtField.copyWith(hintText: '************'),
                  )),
              SizedBox(height: 15.0),

              //************* PASSWORD TEXT
              Text("Confirm Password", style: kLoginText),
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

                  //***** ENTER PASSWORD TEXT FIELD
                  //TODO: CONFIRM PASSWORD
                  child: TextFormField(
                    obscureText: true,
                    decoration: kTxtField.copyWith(hintText: '************'),
                  )),
              SizedBox(
                height: 20.0,
              ), //TODO: SignUp BUTTON
              Button(
                onPress: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                buttonTitle: "SignUp",
                colour: Color(0xFFFF3D3A3A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
