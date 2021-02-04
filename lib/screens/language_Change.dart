import 'package:flutter/material.dart';

import 'package:art/component/button.dart';
import 'select_user.dart';

class LanguageChange extends StatefulWidget {
  // @override
  _LanguageChangeState createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.2, 0.6, 0.5, 0.6, 0.9, 0.9],
            colors: [
              Colors.white,
              Colors.white,
              Colors.blue[50],
              Colors.white,
              Colors.blue[50],
              Colors.blue[50],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Image(
                  image: AssetImage('images/logo.png'), //TODO: Logo Image
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                "Select Language",
                style: TextStyle(
                    color: Color(0xFFFF3D3A3A),
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              //
              Button(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectUser(),
                    ),
                  );
                },
                buttonTitle: "Continue",
                colour: Color(0xFFFF3D3A3A),
              )
            ],
          ),
        ),
      ),
    );
  }
}
