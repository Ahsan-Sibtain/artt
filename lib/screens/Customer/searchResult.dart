import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Result"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //
              Card(
                child: Container(
                  height: 120.0,
                  child: (Row(
                    children: [
                      Image(
                        image: AssetImage('images/ava.png'), //TODO: Logo Image
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Painting with heart", //TODO: ART NAME
                            style: TextStyle(
                                color: Color(0xFFFF1D1ABC),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Location"), //TODO:LOCATION
                              SizedBox(
                                width: 10.0,
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("11122 Offers"), //TODO: Show Total Offer
                              SizedBox(
                                width: 55.0,
                              ),

                              //TODO: Deatil Button
                              GestureDetector(
                                child: Container(
                                  height: 25.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: kElevationToShadow[1],
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color(0xFFFF3D3A3A),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "detail",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 25.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              boxShadow: kElevationToShadow[1],
                              borderRadius: BorderRadius.circular(40),
                              color: (Text == 'sold')
                                  ? Colors.blue
                                  : Colors
                                      .red, //TODO: Check Status if available Color Blue
                            ),
                            child: Center(
                              child: Text(
                                "Available",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
