import 'package:flutter/material.dart';
import 'package:art/component/constant.dart';
import 'package:art/component/flat_Button.dart';

class NumConfirm extends StatefulWidget {
  @override
  _NumConfirmState createState() => _NumConfirmState();
}

class _NumConfirmState extends State<NumConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text("Confirm your number", style: kTextStyleHeader),
            SizedBox(
              height: 10.0,
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Enter the 4-Digit Code ',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'ArtFor',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: 'You',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: ' just send to 0312 1231235', //TODO: SHOW NUMBER
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 100.0,
              child: Text(
                "Confirmation Code here", //TODO: CONFIRMATION CODE
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't get a text ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FilterFlatButton(
                  //TODO: TRY AGAIN BUTTON
                  ButtonTitle: "Try Again",
                  TxtColor: Colors.blue,
                  size: 18.0,
                  onpressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
