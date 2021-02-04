import 'package:art/component/card.dart';
import 'package:art/component/constant.dart';
import 'package:art/component/imagelist.dart';
import 'package:art/component/list_data.dart';
import 'package:art/component/Chips.dart';

import 'package:art/screens/Artist/artist_login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'artDetail.dart';

class CustomerHome extends StatefulWidget {


  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  TrendingData _data = TrendingData();

  RoundCardData _round = RoundCardData();
  bool _switch = false;
  bool _visible = false;
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text(
              //   "Customer",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              // ),
              // Switch(
              //   //TODO: Availability BUTTON
              //   // title: Text('Out of Stock'),
              //   value: _switch,
              //   onChanged: (bool value) {
              //     setState(() {
              //       Navigator.pushReplacement(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => ArtistLogin()));
              //     });
              //   },
              // ),

              Icon(Icons.settings,)

              //       InkWell(
              //           splashColor: Colors.grey[400],
              //           highlightColor: Colors.grey[400],
              //           child: Text(
              //             "Filter",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 15.0),
              //           ),
              //           onTap: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => CustomerSearch(),
              //               ),
              //             );
              //           }),
              //       SizedBox(
              //         width: 20.0,
              //       )
            ],
          ),
        ],
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Image.asset(
          'images/logo.png',
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose a topic", style: kTextStyleHeader),
                CategoryChipHome(),

                Visibility(
                    visible: _visible,

                    child: Column(
                      children: [
                        Text("Specify your interest", style: kTextStyleHeader),
                        SubCategoryChip(),
                      ],
                    )),
                Text(
                  "Top 10 Sellers",
                  style: kTextStyleHeader,
                ),
                SizedBox(height: 10.0),
                Container(
                    height: 75.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _round.getLength(),
                        itemBuilder: (context, index) {
                          return
                              //TODO: User Profile pic and Name Round Card
                              RoundCard(
                            img: "${_round.getImage(index)}",
                            txt: "${_round.getName(index)}",
                          );
                        })),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Top 10 Sales",
                  style: kTextStyleHeader,
                ),
                SizedBox(height: 10.0),
                Container(
                    width: MediaQuery.of(context).size.width,
                    //TODO: Image Slider
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                    child: Stack(
                                  children: [
                                    Image.asset(
                                      item,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                    Positioned(
                                        top: 5.0,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              color:
                                                  Colors.grey.withOpacity(0.5),

                                              height: 30,
                                              width: 285,
                                              child: Center(
                                                child: Text(
                                                  "Art",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ), //TODO: Art Name
                                            ),
                                            SizedBox(height: 100.0),
                                            Container(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              height: 30,
                                              width: 285,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, right: 8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "152 \$",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          EvaIcons.star,
                                                          color: Colors
                                                              .orangeAccent,
                                                        ),
                                                        Text(
                                                          "111",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .orangeAccent),
                                                        ),
                                                        Text(
                                                          "(",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          "323",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          ")",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                )),
                              ))
                          .toList(),
                    )),

                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Suggestions for you",
                  style: kTextStyleHeader,
                ),
                SizedBox(height: 10.0),

                //TODO: Grid view of Art work
                Container(
                  child: GridView.count(
                    childAspectRatio: 80 / (440 / 4),
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                      4,
                      (index) {
                        return Container(
                          height: 420.0,
                          width: 80.0,
                          child: Card(
                            color: Colors.grey.shade100,
                            elevation: 5,
                            //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //margin: EdgeInsets.only(bottom: 8.0),
                                  height: 150.0, width: 165.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "imageSlide/p1.jpg"), //TODO: ART IMAGE
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      EvaIcons.heart,
                                      size: 15.0,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "5", //TODO: likes
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      EvaIcons.eye,
                                      size: 15.0,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "33", //TODO: VIEWS
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      EvaIcons.messageCircle,
                                      size: 15.0,
                                      color: Colors.orangeAccent,
                                    ),
                                    Text(
                                      "6", //TODO:offers
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "3.2", //TODO:offers
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "The Canvas", //TODO: ART NAme
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0, top: 5),
                                  child: Text(
                                    "hello Word", //TODO: Creator Name
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    //
                  ),
                ),

                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Trending products for last 30 days",
                  style: kTextStyleHeader,
                ),
                SizedBox(height: 10.0),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      // physics: ClampingScrollPhysics(),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
//
//                           //TODO:
                      itemCount: _data.getLength(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArtDetail(),
                                  ),
                                );
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // margin: const EdgeInsets.all(30.0),
                                  child: Card(
                                    color: Colors.grey.shade100,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "${_data.getArtName(index)}", //TODO: Art Name
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "${_data.getPrice(index)}", //TODO:PRice
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
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
                                                            kElevationToShadow[6],
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                30.0),
                                                      ),
                                                      //TODO:Profile image
                                                      child: CircleAvatar(
                                                        radius: 15.0,
                                                        backgroundImage: AssetImage(
                                                            "${_data.getImage(index)}"),
                                                      )),
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Text(
                                                      "${_data.getName(index)}", //TODO: User Name
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${_data.getItem(index)}"
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
                                            height: 5.0,
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                          ),
                                          Container(
                                              width:
                                                  MediaQuery.of(context).size.width,
                                              //TODO: Image Slider
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  aspectRatio: 2.0,
                                                  enlargeCenterPage: true,
                                                ),
                                                items: imgList
                                                    .map((item) => Container(
                                                          child: Center(
                                                              child: Stack(
                                                            children: [
                                                              Image.asset(
                                                                item,
                                                                fit: BoxFit.cover,
                                                                width:
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width,
                                                              ),
                                                              Positioned(
                                                                child: IconButton(
                                                                  icon: Icon(
                                                                    EvaIcons
                                                                        .heartOutline,
                                                                    size: 40.0,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                        ))
                                                    .toList(),
                                              )),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    EvaIcons.heartOutline,
                                                    color: Colors.black,
                                                  ),
                                                  Text(
                                                    "${_data.getLikes(index)}",
                                                  ), //TODO Likes
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),

                                                  Icon(
                                                    EvaIcons.star,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    "${_data.getRating(index)}",
                                                    style: TextStyle(
                                                        color: Colors.orangeAccent),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Icon(
                                                    EvaIcons.eyeOutline,
                                                    color: Colors.black,
                                                  ),
                                                  Text("("),
                                                  Text(
                                                    "${_data.getView(index)}",
                                                  ),
                                                  Text(")"),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                      splashColor: Colors.grey[400],
                                                      highlightColor:
                                                          Colors.grey[400],
                                                      child: Icon(
                                                        EvaIcons.share,
                                                        color: Colors.black54,
                                                        size: 40.0,
                                                      ),
                                                      onTap: () {}),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
