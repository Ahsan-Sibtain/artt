import 'package:art/component/customer_BottomBar.dart';
import 'package:art/screens/Customer/customer_SignUp.dart';
import 'package:art/screens/Customer/customer_SignupDetail.dart';
import 'package:art/screens/Customer/customer_login.dart';
import 'package:art/screens/country_select.dart';
import 'package:art/screens/rest_Password.dart';
import 'package:art/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:art/screens/select_user.dart';
import 'package:art/screens/Artist/artist_login.dart';
import 'package:art/component/Artist_BottomBar.dart';
import 'package:art/screens/Artist/artist_signUp.dart';
import 'package:art/screens/Artist/artist_signupDetail.dart';

void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{

  // "/lanuageSelect": (BuildContext context) => LanguageSelector(),
  // "/bottomNavigation": (BuildContext context) => navigationBar(),
  // "/notifi": (BuildContext context) =>  notifications(),
  // "/mygrades": (BuildContext context) =>  myGrades(),
  // "/contactus": (BuildContext context) =>  contactUsWithOutSignIn(),

  "/countrySelect": (BuildContext context) => CountrySelect(),
  "/signIn": (BuildContext context) => CustomerLogin(),
  "/forgotPassword": (BuildContext context) => RestPassword(),
  "/signUp": (BuildContext context) => CustomerSignUp(),
  "/customerSignUpDetails": (BuildContext context) => CustomerSignUpDetail(),
  "/customerBottomBar": (BuildContext context) => CustomerBottomBar(),
  "/selectUser": (BuildContext context) => SelectUser(),
  "/artistLogin": (BuildContext context) => ArtistLogin(),
  "/artistBottomBar": (BuildContext context) => ArtistBottomBar(),
  "/artistSignUp": (BuildContext context) => ArtistSignUp(),
  "/artistSignUpDetails": (BuildContext context) => ArtistSignUpDetail(),


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



// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations(
//         [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
//     //
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(),
//       home: SplashScreen(),
//     );
//   }
// }
