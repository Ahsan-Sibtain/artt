import 'package:art/component/button.dart';
import 'package:art/component/constant.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'customer_login.dart';
import '../Customer/confirmation.dart';

class CustomerSignUp extends StatefulWidget {
  @override
  _CustomerSignUpState createState() => _CustomerSignUpState();
}

class _CustomerSignUpState extends State<CustomerSignUp> {
  @override
  Widget build(BuildContext context) {
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
                //*******************JOIN IN TO ART FOR you TEXT
                Row(
                  children: [
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
                  ],
                ),
                SizedBox(height: 15.0),
                Text("Country/Region", style: kLoginText),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  width: 330.0,
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
                SizedBox(height: 15.0),
                Text("Phone Number", style: kLoginText),
                SizedBox(height: 8.0),
                //TODO: Phone Number
                Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    width: 330.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[1],
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),

                    //***** Phone Number TEXT FIELD
                    //TODO:Enter Number
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration:
                          kTxtField.copyWith(hintText: 'Enter Phone Number'),
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "We'll text you to confirm your number",
                  style: kLoginText,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Button(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumConfirm(),
                      ),
                    );
                  },
                  buttonTitle:
                      "Sign up with phone number", //TODO:Signup with Number
                  colour: Color(0xFFFF3D3A3A),
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
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have Account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      splashColor: Colors.grey,
                      minWidth: 10.0,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomerLogin(),
                          ),
                        );
                      },
                      child: Text("Login",
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
      ),
    );
  }
}
