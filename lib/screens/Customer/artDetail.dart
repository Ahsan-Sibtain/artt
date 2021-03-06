import 'package:art/component/colors.dart';
import 'package:art/component/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:art/component/imagelist.dart';
import 'package:photo_view/photo_view.dart';
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
                              child: PhotoView(

                                imageProvider: AssetImage(
                            item,
                            // fit: BoxFit.cover,
                            // width: MediaQuery.of(context).size.width,
                          ),
                              )),
                        ))
                    .toList(),
              ),
            ),
            Divider(thickness: 1.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                      },

                      child: Icon(
                          EvaIcons.heart,
                          color: Colors.red,
                          size: 16
                      ),
                    ),
                    Text(
                      "4.3",
                    ), //TODO Likes

                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      EvaIcons.eyeOutline,
                      color: Colors.black,
                        size: 16
                    ),
                    Text("("),
                    Text(
                      "201",
                    ),
                    Text(")"),
                    SizedBox(
                      width: 20.0,
                    ),

                    Icon(
                      EvaIcons.star,
                      color: Colors.orangeAccent,
                      size: 14,
                    ),
                    Text(
                      "4.1",
                      style: TextStyle(
                          color: Colors
                              .orangeAccent),
                    ),
                    Text(
                      "(334)",
                      style: TextStyle(
                          color: Colors
                              .grey),
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     // IconButton(
                //     //     icon:
                //     GestureDetector(
                //       onTap: () {},
                //       child: Icon(
                //         EvaIcons.heartOutline, //TODO:Like Button
                //         color: Colors.grey,
                //       ),
                //     ),
                //     // onPressed: () {}),
                //     SizedBox(
                //       width: 5.0,
                //     ),
                //     Text(
                //       "5",
                //       style: CardSubTitleStyle, //TODO:Number of likes show
                //     ),
                //     SizedBox(
                //       width: 15.0,
                //     ),
                //     Icon(
                //       EvaIcons.colorPalette,
                //       color: Colors.grey,
                //     ),
                //     SizedBox(
                //       width: 5.0,
                //     ),
                //     Text(
                //       "By User", //TODO:USer Name
                //       style: CardSubTitleStyle,
                //     ),
                //     SizedBox(
                //       width: 15.0,
                //     ),
                //     Icon(
                //       EvaIcons.calendarOutline,
                //       color: Colors.grey,
                //     ),
                //     SizedBox(
                //       width: 5.0,
                //     ),
                //     Text(
                //       "2020",
                //       style: CardSubTitleStyle, //TODO: DATE
                //     ),
                //     SizedBox(
                //       width: 90.0,
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 20.0,
                ),


                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: [
                              Text(
                                "Abstract painting on canvas", //TODO: Art Name
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold),
                              ),
                              Text(
                                "\$500", //TODO:PRice
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 20.0),
                              )
                            ]),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      boxShadow:
                                      kElevationToShadow[
                                      6],
                                      borderRadius:
                                      BorderRadius
                                          .circular(30.0),
                                    ),
                                    //TODO:Profile image
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                          "images/ava.png"),
                                    )),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                    "Mr. XXX YYY", //TODO: User Name
                                    style: TextStyle(
                                        fontWeight:
                                        FontWeight.bold)),

                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "2"
                                      " Items Left", //TODO: Remaining Items
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12.0,
                                      fontWeight:
                                      FontWeight.bold),
                                )
                              ],
                            )
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
                          "it has been the first i have done in some time now and with it if you only want to underline "
                              "part of the text then you need to use Text.rich() (or a RichText widget) and break the string "
                              "into TextSpans that you can add a style to", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "Artist Name",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ismail khan", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),



                        //////////////////////////
                        Text(
                          "Category",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Canvas", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "Sub Category",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sub Category 3", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "Country",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Chica Watni", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "City",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "TTS", //TODO: Show Story About art
                          style: CardSubTitleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "Dimension",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Row(
                          children: [
                            Text(
                              "Height: 20", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Width: 15", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Depth: 10", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          "Key words",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Drawing", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Art", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "painting", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),


                        Text(
                          "Status",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Sold: NO", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Availability: YES", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Active: YES", //TODO: Show Story About art
                              style: CardSubTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                // Divider(
                //   thickness: 1.0,
                // ),
                // Text(
                //   "Pricing Detail",
                //   style: CardTitleTxtStyle,
                // ),
                // SizedBox(height: 10.0),
                // Row(
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           "Medium",
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "Base",
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "Dimension",
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "Created by",
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "Upload on",
                //           style: CardSubTitleStyle,
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       width: 50.0,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           "Acrylic", //TODO: SHOW MEDIUM OF ART
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         SizedBox(width: 70.0),
                //         Text(
                //           "Canvas", //TODO: SHOW BASE OF ART
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "12.3 x 12.1 x 20.2 INCHES", //TODO: SHOW Dimensions OF ART
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "HelloJay", //TODO: SHOW CREATOR NAME
                //           style: CardSubTitleStyle,
                //         ),
                //         SizedBox(height: 10.0),
                //         Text(
                //           "21 November 2020", //TODO: SHOW DATE WHEN UPLOADED
                //           style: CardSubTitleStyle,
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       "Total : 1220 \$",
                //       style: kTextStyleHeader,
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                Center(
                  child: Button(
                    text: Text(
                      "Place by request",
                      style: TextStyle(),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/naviga");
                    },
                    color: buttonBackgroundColor,
                    focusColor: buttonColor1,
                    disbaleColor: buttonColor2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
