import 'package:art/component/button.dart';
import 'package:art/component/constant.dart';
import 'package:art/component/flat_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../rest_Password.dart';
import 'artist_signupDetail.dart';
import 'package:art/component/Artist_BottomBar.dart';

class ArtistLogin extends StatefulWidget {
  @override
  _ArtistLoginState createState() => _ArtistLoginState();
}

class _ArtistLoginState extends State<ArtistLogin> {
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
              SizedBox(height: 50.0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
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
              //************* EMAIL TEXT
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
//TODO:EMAIL
                  //***** ENTER EMAIL TEXT FIELD
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        kTxtField.copyWith(hintText: 'Enter your Email'),
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
//TODO: PASSWORD
                  //***** ENTER PASSWORD TEXT FIELD
                  child: TextFormField(
                    obscureText: true,
                    decoration: kTxtField.copyWith(hintText: '************'),
                  )),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //******* FORGOT PASSWORD
                  //TODO:Forgot password
                  FilterFlatButton(
                    ButtonTitle: "Forgot Password",
                    TxtColor: Colors.grey,
                    onpressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestPassword()));
                    },
                  ),
                ],
              ),

              //TODO: LOGIN BUTTON
              Button(
                onPress: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArtistBottomBar(),
                    ),
                  );
                },
                buttonTitle: "Login",
                colour: Color(0xFFFF3D3A3A),
              ),
              SizedBox(
                height: 180.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have Account ?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    splashColor: Colors.grey,
                    minWidth: 10.0,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArtistSignUpDetail(),
                        ),
                      );
                    },
                    child: Text("Signup",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
