import 'package:art/component/CustomTextField.dart';
import 'package:art/component/button.dart';
import 'package:art/component/colors.dart';
import 'package:art/component/constant.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../Customer/confirmation.dart';

class ArtistSignUp extends StatefulWidget {
  @override
  _ArtistSignUpState createState() => _ArtistSignUpState();
}

class _ArtistSignUpState extends State<ArtistSignUp> {
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      supportedLocales: [
        Locale('en'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width/1.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:height/3,
                    child: Image(
                      image: AssetImage('images/logo.png'), //TODO: Logo Image
                    ),
                  ),
                  //*******************JOIN IN TO ART FOR you TEXT
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Join the ',
                          style: kTextSpanGray,
                        ),
                        TextSpan(
                          text: 'Art',
                          style: kTextSpanBlue,
                        ),
                        TextSpan(text: 'Lik', style: kTextSpanRed),
                        TextSpan(
                          text: ' Community',
                          style: kTextSpanGray,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height/50),
                  Text("Country/Region", style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
                  SizedBox(height: height/60),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[1],
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    width: width/1.2,
                    child: Column(
                      children: [
                        //TODO: COUNTRY CODE DROP DOWN
                        CountryCodePicker(
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'IT',

                          showCountryOnly: true,
                          showOnlyCountryWhenClosed: true,
                          favorite: ['+39', 'FR'],

                          showFlagDialog: true,
                          comparator: (a, b) => b.name.compareTo(a.name),

                          onInit: (code) =>
                              print("on init ${code.dialCode} ${code.name} "),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height/60),
                  Text("Phone Number", style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
                  SizedBox(height: height/60),
                  //TODO: Phone Number
                  CustomTextField(
                    hinttext: "Enter your Phone Number",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(height: height/40),
                  Text(
                    "We'll text you to confirm your number",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: height/60),
                  Button(
                    text: Text(
                      "Sign Up with phone number",
                      style: TextStyle(),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/artistSignUpDetails");
                    },
                    color: buttonBackgroundColor,
                    focusColor: buttonColor1,
                    disbaleColor: buttonColor2,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or use Social Media",
                        style: kLoginText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      children: [
                        Container(
                          width: 335.0,
                          height: 55.0,
                          //TODO:Signup with google
                          child: SignInButton(Buttons.Google,
                              shape: StadiumBorder(), onPressed: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 335.0,
                          height: 55.0,
                          child:
                          SignInButton(Buttons.Facebook, //TODO:Signup with Fb
                              shape: StadiumBorder(),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: height/50,
                  ),
                  Center(
                    child: Container(
                      width: width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/signIn");
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: height / 50),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height/50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
