import 'package:flutter/material.dart';
import 'package:art/component/flat_Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../offer_Detail.dart';
import 'package:art/component/list_data.dart';
import 'package:art/component/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class OrderAccepted extends StatefulWidget {
  @override
  _OrderAcceptedState createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  OfferData _offer = OfferData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                                border: Border.all(color: Colors.grey)),
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
                                        SizedBox(width: 5.0),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${_offer.getName(index)}", //TODO: NAME
                                              style: CardSubTitleStyle,
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 5.0),
                                            Text(
                                              "${_offer.getLocation(index)}", //TODO: LOCATION
                                              style: CardSubTitleStyle,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
// Row(
//   children: [
//     InkWell(
//         splashColor: Colors.red,
//         highlightColor: Colors.red,
//         child: FaIcon(
//             FontAwesomeIcons.whatsapp),
//         onTap: () {}),
//     InkWell(
//         splashColor: Colors.red,
//         highlightColor: Colors.red,
//         child:
//             FaIcon(FontAwesomeIcons.phone),
//         onTap: () {}),
//     InkWell(
//         splashColor: Colors.red,
//         highlightColor: Colors.red,
//         child: Icon(Icons.email),
//         onTap: () {}),
//
// ],
// ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Your Offer',
                                                  style: kLoginText,
                                                ),
                                                SizedBox(width: 7),
                                                Text(
                                                  "${_offer.getOffer(index)}", //TODO: OFFER
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  EvaIcons.clock,
                                                  color: Colors.grey,
                                                  size: 18,
                                                ),
                                                Text(
                                                  "${_offer.getDate(index)}",
                                                  style: TextStyle(
                                                      fontSize:
                                                      12), //TODO: date
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text(
                                                  "${_offer.getHours(index)}",
                                                  style: TextStyle(
                                                      fontSize:
                                                      12), //ToDO:hours
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(
                                  thickness: 2.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 170.0,
                                      width: 160.0,
                                      child: Card(
                                        color: Colors.grey.shade100,
                                        elevation: 0,
//margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(12.0),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                                "${_offer.getArt(index)}", //TODO: Art NAme
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)
//CardTitleTxtStyle,
                                            ),
                                            Container(
                                              height: 120,
                                              width: 170.0,
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
                                            Text(
                                                "${_offer.getPrice(index)}", //TODO: PRICEE
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.payment_outlined,size: 18,),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${_offer.getPayment(index)}",
                                              style: TextStyle(fontSize: 10),//TODO:Payment Method
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.bus,size: 18,),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${_offer.getDelivery(index)}",
                                              style: TextStyle(fontSize: 12),//TODO:DElivery
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,size: 18,),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              width:MediaQuery.of(context).size.width/5,
                                              child: Text(
                                                "${_offer.getLocal(index)}",
                                                style: TextStyle(
                                                    fontSize: 12), //TODO:location
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 180,
                                          child: Row(children: [
                                            Text(
                                              "Shipped", //TODO:Status Accept
                                              style: TextStyle(
                                                  color: Colors.yellowAccent.shade200,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.0),
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              height: 20,
                                              width: 90,
                                              child: RaisedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Cancel offer",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 10.0,
                                                      color: Colors.white),
                                                ),
                                                // minWidth: 28.0,
                                                // height: 26.0,
                                                color: Colors.green.shade200,
                                                splashColor: Colors.green,
                                                shape: StadiumBorder(),
                                              ),
                                            ),

                                          ],),
                                        )

                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
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
        ));
  }
}
