import 'package:art/component/button.dart';
import 'package:art/component/constant.dart';
import 'package:art/component/imagelist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ReSubmit extends StatefulWidget {
  @override
  _ReSubmitState createState() => _ReSubmitState();
}

class _ReSubmitState extends State<ReSubmit> {
  @override
  Widget build(BuildContext context) {
    //****
    // List<int> list = [
    //   1,
    //   2,
    //   3,
    // ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage("images/ava.png"), //TODO: Profile Pic
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              children: [
                Text("Oil painting"), //TODO: CATEGORY
                Text(
                  "AHSAN", //TODO: USer NAme
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
            Icons.settings,
            color: Colors.white,
          )),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              //TODO:image Slider
              child: CarouselSlider(
                options: CarouselOptions(
                  //height: 20,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          )),
                        ))
                    .toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Ahsan", //TODO: NAME
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Price: 155 \$ ", //TODO: PRice
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(thickness: 1.0),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Offer', style: kTextStyleHeader),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: 330.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          boxShadow: kElevationToShadow[3],
                        ),

                        //*** Offer
                        //TODO:OFFER
                        child: TextFormField(
                          decoration: kTxtField.copyWith(hintText: '211 \$'),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        "123 \$", //TODO: DISPLAY PRICE
                        style: kTextSpanGray,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    SliderTheme(
                      //TODO: PRICE SLIDER
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.grey[200],
                        thumbColor: Color(0xFFFF3D3A3A),
                        overlayColor: Colors.grey[200],
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: 120.0,
                        min: 100.0,
                        max: 230.0,
                        onChanged: (double newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Button(
                      //TODO: Re-Submit Button
                      onPress: () {},
                      colour: Color(0xFFFF3D3A3A),
                      buttonTitle: "Re-Submit",
                    )
                  ]),
            ),

            //************************************8
          ],
        ),
      ),
    );
  }
}
