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
              expandedHeight: 50.0,
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
                            size: 10.0,
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
                                    "1223", //TODO: Show likes
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Likes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 10.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "123", //TODO: Show number Views
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Views",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 10.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "122", //TODO: Show Numbers of offers
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Offers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 10.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "13", //TODO: Show Number of order
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Orders",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 10.0),
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
                            fontSize: 15.0),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ];
        },
        body: GridView.count(
          childAspectRatio: (3 / 3),
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          shrinkWrap: true,
          children: List.generate(
            10,
            (index) {
              return Container(
                height: 430.0,
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
                        height: 110.0, width: 165.0,
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
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.heart,
                            size: 10.0,
                            color: Colors.red,
                          ),
                          Text(
                            "5", //TODO: likes
                            style: TextStyle(fontSize: 12.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            EvaIcons.eye,
                            size: 10.0,
                            color: Colors.blue,
                          ),
                          Text(
                            "33", //TODO: VIEWS
                            style: TextStyle(fontSize: 12.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            EvaIcons.messageCircle,
                            size: 10.0,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            "6", //TODO:offers
                            style: TextStyle(fontSize: 12.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            EvaIcons.star,
                            size: 10.0,
                            color: Colors.yellow,
                          ),
                          Text(
                            "3.2", //TODO:offers
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "The Canvas", //TODO: ART NAme
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5),
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
