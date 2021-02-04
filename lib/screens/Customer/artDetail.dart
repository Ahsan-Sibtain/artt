import 'package:art/component/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:art/component/imagelist.dart';

import 'package:art/component/button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'show_Review.dart';
import 'submit_request.dart';

class ArtDetail extends StatefulWidget {
  @override
  _ArtDetailState createState() => _ArtDetailState();
}

class _ArtDetailState extends State<ArtDetail> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<int> list = [
      1,
      2,
      3,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
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
            Divider(thickness: 1.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // IconButton(
                      //     icon:
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          EvaIcons.heartOutline, //TODO:Like Button
                          color: Colors.grey,
                        ),
                      ),
                      // onPressed: () {}),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "5",
                        style: CardSubTitleStyle, //TODO:Number of likes show
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        EvaIcons.colorPalette,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "By User", //TODO:USer Name
                        style: CardSubTitleStyle,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        EvaIcons.calendarOutline,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "2020",
                        style: CardSubTitleStyle, //TODO: DATE
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Description",
                    style: CardTitleTxtStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "it has been the first i have done in some time now and with it", //TODO: Show Story About art
                    style: CardSubTitleStyle,
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1.0,
                  ),
                  Text(
                    "Pricing Detail",
                    style: CardTitleTxtStyle,
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medium",
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Base",
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Dimension",
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Created by",
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Upload on",
                            style: CardSubTitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Acrylic", //TODO: SHOW MEDIUM OF ART
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(width: 70.0),
                          Text(
                            "Canvas", //TODO: SHOW BASE OF ART
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "12.3 x 12.1 x 20.2 INCHES", //TODO: SHOW Dimensions OF ART
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "HelloJay", //TODO: SHOW CREATOR NAME
                            style: CardSubTitleStyle,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "21 November 2020", //TODO: SHOW DATE WHEN UPLOADED
                            style: CardSubTitleStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Total : 1220 \$",
                        style: kTextStyleHeader,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Button(
                    buttonTitle: "Place by Request",
                    colour: Color(0xFFFF3D3A3A),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Request(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
