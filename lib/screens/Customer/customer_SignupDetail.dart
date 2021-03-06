import 'package:art/component/CustomTextField.dart';
import 'package:art/component/button.dart';
import 'package:art/component/colors.dart';
import 'package:art/component/constant.dart';
import 'customer_SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerSignUpDetail extends StatefulWidget {
  @override
  _CustomerSignUpDetailState createState() => _CustomerSignUpDetailState();
}

class _CustomerSignUpDetailState extends State<CustomerSignUpDetail> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'SignUp in to ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 40,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: 'Art',
                          style: TextStyle(
                              color: Color(0xff05a2fc),
                              fontSize: height / 40,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                        text: 'Lik',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 60),
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
                Text("Email",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(

                  hinttext: "· · · · · · · · · ·",
                  obscureText: _obscureText,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),
                Text("City",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "Enter your City",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),

                //************* PASSWORD TEXT
                Text("Password",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye,  color: Color(0xff05a2fc),),
                    iconSize: 18,
                    color: basicColorShopper,
                    onPressed: _toggle,
                  ),
                  hinttext: "· · · · · · · · · ·",
                  obscureText: _obscureText,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),
                Text("Confirm Password",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye,  color: Color(0xff05a2fc), ),
                    iconSize: 18,
                    color: basicColorShopper,
                    onPressed: _toggle,
                  ),
                  hinttext: "· · · · · · · · · ·",
                  obscureText: _obscureText,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),


                //TODO: LOGIN BUTTON

                SizedBox(height: height / 60),
                Button(
                  text: Text(
                    "Sign Up",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/customerBottomBar");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor2,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(height: height / 60),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already  have an Account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width / 70,
                    ),
                    InkWell(
                      onTap: ()
                      {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xff05a2fc),
                                fontSize: height / 50,
                                fontWeight: FontWeight.w600),
                          )),
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
