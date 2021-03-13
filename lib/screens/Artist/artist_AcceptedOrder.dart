import 'package:flutter/material.dart';
import 'package:art/component/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:art/component/list_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcceptedOrder extends StatefulWidget {
  @override
  _AcceptedOrderState createState() => _AcceptedOrderState();
}

class _AcceptedOrderState extends State<AcceptedOrder> {
  OfferData _offer = OfferData();
  @override
  Widget build(BuildContext context) {

    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: width/1.05,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Expanded(
                  // height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
//
                      itemCount: _offer.getLength(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                boxShadow: kElevationToShadow[4],
                                border: Border.all(color: Colors.white24),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white60,
                                                boxShadow: kElevationToShadow[6],
                                                borderRadius:
                                                BorderRadius.circular(25.0),
                                              ),
                                              child: CircleAvatar(
                                                radius: 20.0,
                                                backgroundImage: AssetImage(
                                                  "${_offer.getImage(index)}", //TODO: Profile Image
                                                ),
                                              )),
                                          SizedBox(width:width/60),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${_offer.getName(index)}", //TODO: NAME
                                                style: CardSubTitleStyle,
                                                textAlign: TextAlign.center,
                                              ),
                                              // SizedBox(height: height/90),
                                              Text(
                                                "${_offer.getLocation(index)}", //TODO: LOCATION
                                                style: CardSubTitleStyle1,
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  InkWell(
                                                      splashColor: Colors.red,
                                                      highlightColor: Colors.red,
                                                      child: FaIcon(
                                                        FontAwesomeIcons.whatsapp,
                                                        color: Colors.green,
                                                        size: height/50,),
                                                      onTap: () {}),
                                                  SizedBox(width: width/80),
                                                  InkWell(
                                                      splashColor: Colors.red,
                                                      highlightColor: Colors.red,
                                                      child:
                                                      FaIcon(FontAwesomeIcons.phone,   size: height/50,color: Colors.blueGrey,),
                                                      onTap: () {}),
                                                  SizedBox(width: width/80),
                                                  InkWell(
                                                      splashColor: Colors.red,
                                                      highlightColor: Colors.red,
                                                      child: Icon(Icons.email,   size: height/50,color: Colors.redAccent[100],),
                                                      onTap: () {}),

                                                ],
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    EvaIcons.clock,
                                                    color: Colors.grey,
                                                    size: height/45,
                                                  ),
                                                  Text(
                                                    "${_offer.getDate(index)}",
                                                    style: TextStyle(
                                                        fontSize:
                                                        height/65), //TODO: date
                                                  ),
                                                  SizedBox(
                                                    width: width/70,
                                                  ),
                                                  Text(
                                                    "${_offer.getHours(index)}",
                                                    style: TextStyle(
                                                        fontSize:
                                                        height/65), //ToDO:hours
                                                  )
                                                ],
                                              ),
                                              // SizedBox(
                                              //   height: height/80,
                                              // ),

                                              Row(
                                                children: [
                                                  Text(
                                                    'offered you  ',
                                                    style: TextStyle(color: Colors.grey, fontSize: height/50, fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "${_offer.getOffer(index)}", //TODO: OFFER
                                                    style:  TextStyle(color: Colors.black, fontSize: height/40, fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: height/80,
                                  // ),
                                  Divider(
                                    thickness: 2.0,
                                  ),
                                  Container(
                                    width: width,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height/5,
                                          width: width/2.6,
                                          child: Card(
                                            color: Colors.grey.shade100,
                                            elevation: 5,
                                            //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(12.0),
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                SizedBox(
                                                  height: height/80,
                                                ),
                                                Text(
                                                    "${_offer.getArt(index)}", //TODO: Art NAme
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: height/50,
                                                        fontWeight: FontWeight.bold)
                                                  //CardTitleTxtStyle,
                                                ),
                                                SizedBox(
                                                  height: height/80,
                                                ),
                                                Container(
                                                  height: height/9,
                                                  // width: 160.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.only(),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "${_offer.getArtImage(index)}", //TODO: ART IMAGE
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                // SizedBox(
                                                //   height: height/,
                                                // ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                    "${_offer.getPrice(index)}", //TODO: PRICEE
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: height/55,
                                                        fontWeight:
                                                        FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width/80,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.payment_outlined,size: height/45,),
                                                SizedBox(
                                                  width: width/60,
                                                ),
                                                Text(
                                                  "${_offer.getPayment(index)}",
                                                  style: TextStyle(color: Colors.black, fontSize: height/70),//TODO:Payment Method
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                FaIcon(FontAwesomeIcons.bus, size: height/45,),
                                                SizedBox(
                                                  width: width/60,
                                                ),
                                                Text(
                                                  "${_offer.getDelivery(index)}",
                                                  style: TextStyle(color: Colors.black, fontSize: height/70),//TODO:DElivery
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on,size:  height/45,),
                                                SizedBox(
                                                  width: width/60,
                                                ),
                                                Container(
                                                  width: width/3,
                                                  child: Text(
                                                      "${_offer.getLocal(index)}",
                                                      style: TextStyle(color: Colors.black,  fontSize: height/70)//TODO:location
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height/80,
                                            ),


                                           //TODO: ACCEPT BUTTOn
                                            Container(
                                              height: height/32,
                                              child: RaisedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Ship",
                                                  style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: height/65,
                                                      color: Colors.white),
                                                ),
                                                color:
                                                Colors.orangeAccent.shade200,
                                                splashColor: Colors.orange,
                                                shape: StadiumBorder(),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height/80,
                                  ),
                                  Container(
                                    width: width,
                                    child: Column(
                                      children: [
                                        Text(
                                            "You have accepted this offer on  12/6/2021",
                                            style: TextStyle(fontSize: height/60, color: Colors.green, fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.center,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                "for cancel the ongoing order ",
                                                style: TextStyle(fontSize: height/60, color: Colors.black, fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                                "clickhere",
                                                style: TextStyle(fontSize: height/60, color: Colors.grey, fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.underline),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(
                              height: height/40,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
