import 'package:art/component/customer_BottomBar.dart';
import 'package:art/screens/Artist/profile_update.dart';
import 'package:art/screens/Customer/artDetail.dart';
import 'package:art/screens/Customer/confirmation.dart';
import 'package:art/screens/Customer/customer_SignUp.dart';
import 'package:art/screens/Customer/customer_SignupDetail.dart';
import 'package:art/screens/Customer/customer_login.dart';
import 'package:art/screens/Customer/settings.dart';
import 'package:art/screens/country_select.dart';
import 'package:art/screens/rest_Password.dart';
import 'package:art/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:art/screens/select_user.dart';
import 'package:art/screens/Artist/artist_login.dart';
import 'package:art/component/Artist_BottomBar.dart';
import 'package:art/screens/Artist/artist_signUp.dart';
import 'package:art/screens/Artist/artist_signupDetail.dart';
import 'package:art/screens/Artist/Artconfirmation.dart';
import 'package:art/screens/visitor/visitor_BottomBar.dart';
import 'package:art/screens/Customer/searchResult.dart';
import 'package:flutter/services.dart';



void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp])
      .then((_){
    runApp(MyApp());
  }
  );
}

var routes = <String, WidgetBuilder>{



  "/countrySelect": (BuildContext context) => CountrySelect(),
  "/signIn": (BuildContext context) => CustomerLogin(),
  "/forgotPassword": (BuildContext context) => RestPassword(),
  "/signUp": (BuildContext context) => CustomerSignUp(),
  "/customerSignUpDetails": (BuildContext context) => CustomerSignUpDetail(),
  "/customerBottomBar": (BuildContext context) => CustomerBottomBar(),
  "/selectUser": (BuildContext context) => SelectUser(),
  "/artistLogin": (BuildContext context) => ArtistLogin(),
  "/customerLogin": (BuildContext context) => CustomerLogin(),
  "/visitorBottom": (BuildContext context) => VisitorBottomBar(),

  "/artistBottomBar": (BuildContext context) => ArtistBottomBar(),
  "/customerconfrimation": (BuildContext context) => NumConfirm(),
  "/artConfirm": (BuildContext context) => ArtNumConfirm(),
  "/artistSignUp": (BuildContext context) => ArtistSignUp(),
  "/artistSignUpDetails": (BuildContext context) => ArtistSignUpDetail(),
  "/artDetails": (BuildContext context) => ArtDetail(),
  "/settings": (BuildContext context) => Settings(),
  // ignore: equal_keys_in_map
  "/selectUser": (BuildContext context) => SelectUser(),
  "/SellerProfileUpdate": (BuildContext context) => sellerProfileUpdate(),



};



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SplashScreen(),
      routes: routes,
    );
  }
}


