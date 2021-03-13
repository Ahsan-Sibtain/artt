import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:art/component/constant.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double likes = 25465;
    double views = 8787;
    double offers = 25540;
    double orders = 98856;
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color(0xFFFF3D3A3A),
          //   title: Text("Ahsan"), //TODO: USer NAme
          //   centerTitle: true,
          // ),
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 5,
              expandedHeight: 40.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: CircleAvatar(
                    radius: 25.0,
                    backgroundImage:
                        AssetImage("images/ava.png"), //TODO: Profile Pic
                  ),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
            SliverPadding(
              padding: new EdgeInsets.all(16.0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate([
                  Column(
                    children: [
                      Text(
                        "Ahsan", //TODO: User Name
                        style: kTextStyleHeader,
                      ),
                      SizedBox(
                        height: height/80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pakistan", //TODO: Country
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: width/80,
                          ),
                          Text(
                            "4.1", //TODO: Rating
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: height/70,
                          ),
                        ],
                      ),
SizedBox(height: height/60,),
                        Container(
                          width: width/1.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "$likes", //TODO: Show likes
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/55),
                                  ),
                                  SizedBox(
                                    height: height/90,
                                  ),
                                  Text(
                                    "Likes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: height/55),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "$views", //TODO: Show number Views
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/55),
                                  ),
                                  SizedBox(
                                    height: height/90,
                                  ),
                                  Text(
                                    "Views",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: height/55),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "$offers", //TODO: Show Numbers of offers
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/55),
                                  ),
                                  SizedBox(
                                    height: height/90,
                                  ),
                                  Text(
                                    "Offers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: height/55),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "$orders", //TODO: Show Number of order
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/55),
                                  ),
                                  SizedBox(
                                    height: height/90,
                                  ),
                                  Text(
                                    "Orders",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: height/55),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
SizedBox(height: height/60,),
                      Text(
                        "ArtWorks 12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: height/35),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ];
        },
        body: GridView.count(
          childAspectRatio: (3 / 3.5),
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          shrinkWrap: true,
          children: List.generate(
            10,
            (index) {
              return Container(
                // color: Colors.black,
                height: 600,
                width: 50.0,
                child: Card(
                   color: Colors.grey.shade100,
                  //color: Colors.black,
                  elevation: 5,
                  //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //margin: EdgeInsets.only(bottom: 8.0),
                        height: height/5, width: width/2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          image: DecorationImage(
                            image:
                                AssetImage("imageSlide/p1.jpg"), //TODO: ART IMAGE
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: height/,
                      // ),
                      Container(
                        // color: Colors.pink,
                        width: width/2,
                        height: height/40,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.heart,
                                  size: height/50,
                                  color: Colors.red,
                                ),
                                Text(

                                  "$likes", //TODO: likes
                                  style: TextStyle(fontSize: height/60, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width/90,
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.eye,
                                  size: height/50,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "$views", //TODO: VIEWS
                                  style: TextStyle(fontSize: height/60, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width/90,
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.messageCircle,
                                  size: height/50,
                                  color: Colors.orangeAccent,
                                ),
                                Text(
                                  "$offers", //TODO:offers
                                  style: TextStyle(fontSize: height/60, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width/90,
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.star,
                                  size: height/50,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "$offers", //TODO:offers
                                  style: TextStyle(fontSize: height/60, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width/90,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height/80),
                      Text(
                        "The Canvas", //TODO: ART NAme
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 0.0),
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
        ),
      )),
    );
  }
}
