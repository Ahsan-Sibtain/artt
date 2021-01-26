import 'package:art/screens/Customer/searchResult.dart';
import 'package:flutter/material.dart';
import 'package:art/component/flat_Button.dart';
import 'package:art/component/constant.dart';

import 'package:flutter/cupertino.dart';

import 'package:art/component/Chips.dart';

class CustomerSearch extends StatefulWidget {
  @override
  _CustomerSearchState createState() => _CustomerSearchState();
}

class _CustomerSearchState extends State<CustomerSearch> {
  List<String> _select = [];

  var newlist;

  List<String> reportList = [
    "Best Selling",
    "Highest Rated",
//    "Nothing from Them",
  ];
  List<String> selectedReportList = List();

  String selectedsclae = '\u2103';

  TextEditingController filterTxt = new TextEditingController();
//************************************************
  List<String> _category = [];

  var newcategorylist;

  List<String> categoryList = [
//    "I Used a Shampoo",
    "Oil",
    "Pencil",
    "Art Calligraphy",
  ];
  List<String> selectedcategoryList = List();

  String selectedcategory = '\u2103';

  // String currnt = Jiffy().yMMMEdjm;

  TextEditingController categoryTxt = new TextEditingController();
  //*****************************

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilterFlatButton(
              TxtColor: Colors.white,
              ButtonTitle: "Cancel", //TODO: Cancel Button
              onpressed: () {},
            ),
            Text(
              "Filter",
            ),
            FilterFlatButton(
              TxtColor: Colors.white,
              ButtonTitle: "Apply", //TODO: APPLY BUTTON
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchResult()));
              },
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select", style: kTextStyleHeader), //TODO: SELECT CHIPS

              SelectChip(),
              //*********** CATEGORY***********
              Text("Category", style: kTextStyleHeader), //TODO: Category Chip

              CategoryChip(),

              SizedBox(
                height: 15.0,
              ),
              Text("By Region", style: kTextStyleHeader),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: 330.0,
                height: 55.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                //TODO: SELECT COUNTRY / REGION DROPDOWN
                child: DropdownButton(
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Choose Country'), // Not necessary for Option 1
                  value: _selectedCountry,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCountry = newValue;
                    });
                  },
                  items: _country.map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("By Artist", style: kTextStyleHeader),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: 330.0,
                height: 55.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                //TODO:SELECT BUY ARTIST DROPDOWN
                child: DropdownButton(
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Choose Artist'), // Not necessary for Option 1
                  value: _selectedArtist,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedArtist = newValue;
                    });
                  },
                  items: _artist.map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("No. of rooms", style: kTextStyleHeader),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: kTxtField.copyWith(
                        hintText: 'Enter TAGs'), //TODO:ENTER TAGs
                  )),
            ],
          ),
        ),
      ),
    );
  }

//Select Artist
  List<String> _artist = ['A', 'B', 'C', 'D']; //TODO: ARTIST LIST
  String _selectedArtist;

  //Select Country
  List<String> _country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST
  String _selectedCountry;
}
