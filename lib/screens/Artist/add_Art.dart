import 'package:art/component/button.dart';
import 'package:art/component/colors.dart';
import 'package:art/component/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';
import 'package:art/component/CustomTextField.dart';
class NewArt extends StatefulWidget {
  @override
  _NewArtState createState() => _NewArtState();
}

class _NewArtState extends State<NewArt> {

  List<String> _country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST
  String _selectedCountry;

  //**
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("New Art"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width/1.1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageUploadContainer(
                        //TODO:IMAGE UPLOAD DOTTED CONTAINER
                        onTap: () {

                        },
                      ),
                      ImageUploadContainer(
                        //TODO:IMAGE UPLOAD DOTTED CONTAINER
                        onTap: () {},
                      ),
                      ImageUploadContainer(
                        //TODO:IMAGE UPLOAD DOTTED CONTAINER
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height/60,
                ),

                Text(
                  "Basic Info",
                  style: CardTitleTxtStyle,
                ),
                    SizedBox(
                      height: height/60,
                    ),
                    Text("Choose Category", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: height/80,
                    ),
                Container(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  width: width/1.1,
                  height: 45.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  //TODO:CATEGORY DROPDOWN
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    hint: Text('Category'), // Not necessary for Option 1
                    value: _selectedCategory,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategory = newValue;
                      });
                    },
                    items: _category.map((location) {
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
                    Text("Sub Category", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  width: width/1.1,
                  height: 45.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  //TODO:SUB CATEGORY
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    hint: Text('Sub Category'), // Not necessary for Option 1
                    value: _selectedSubCountry,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedSubCountry = newValue;
                      });
                    },
                    items: _subCountry.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 15.0),

                //************* Price
                    Text("Price", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 8.0),

                    CustomTextField(
                      hinttext: "Enter Price",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                SizedBox(height: 15.0),

                //************* Price
                    Text("Enter Product Details", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 8.0),
                    CustomTextField(
                      hinttext: "Enter Product Details",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 15.0),
                    Text("Country", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 8.0,
                ),
                    Container(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      width: width/1.1,
                      height: 45.0,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      //TODO: SELECT COUNTRY / REGION DROPDOWN
                      child: DropdownButton(
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Text('Country'), // Not necessary for Option 1
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


                    SizedBox(height: 15.0),

                    Text("City", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      width: width/1.1,
                      height: 45.0,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      //TODO: SELECT COUNTRY / REGION DROPDOWN
                      child: DropdownButton(
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: Text('City'), // Not necessary for Option 1
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
                      height: 8.0,
                    ),
                    Text("Dimensions", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    smallTextField(
                      hinttext: "Height",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),

                    smallTextField(
                      hinttext: "Width",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),

                    smallTextField(
                      hinttext: "Depth",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                  ],
                ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Keywords", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                    SizedBox(height: 8.0),
                    CustomTextField(
                      hinttext: "Enter Keywords",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                SizedBox(
                  height: 15.0,
                ),

                    Text("Artist Name", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                    SizedBox(height: 8.0),
                    CustomTextField(
                      hinttext: "Artist Name",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),

                    Text("Materials", style: kTextStyleHeader),
                    SizedBox(height: 8.0),
                    CustomTextField(
                      hinttext: "Enter Materials",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Description", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 8.0),
                    largeTextField(
                      hinttext: "",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                SizedBox(
                  height: 15.0,
                ),
                    Text("Status", style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text("Availability"),
                  Switch(
                    //TODO: Availability BUTTON
                    // title: Text('Out of Stock'),
                    value: status1,
                    onChanged: (bool value) {
                      setState(() {
                        status1 = value;
                      });
                    },
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text("Active"),
                  Switch(
                    //TODO: Active BUTTON
                    // title: Text('Out of Stock'),
                    value: status2,
                    onChanged: (bool value) {
                      setState(() {
                        status2 = value;
                      });
                    },
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text("Sold"),
                  Switch(
                    //TODO: Sold BUTTON
                    // title: Text('Out of Stock'),
                    value: status3,
                    onChanged: (bool value) {
                      setState(() {
                        status3 = value;
                      });
                    },
                  ),
                ]),
                SizedBox(height: 15.0),
                    Center(
                      child: Button(
                        text: Text(
                          "Post",
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
                    SizedBox(height: 15.0),
              ]),
            ),
          )),
    );
  }

  List<String> _category = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
  ]; //TODO: Country LIST
  String _selectedCategory;
  List<String> _subCountry = [
    'Sub Category 1',
    'Sub Category 2',
    'Sub Category 3',
    'Sub Category 4',
  ]; //TODO: Country LIST
  String _selectedSubCountry;
}

class ImageUploadContainer extends StatelessWidget {
  ImageUploadContainer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: DashedContainer(
          child: Container(

            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.grey,
              size: 20,
            ),
            height: 70,
            width: 70.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          ),
          dashColor: Colors.grey.shade400,
          borderRadius: 4.0,
          dashedLength: 15.0,
          blankLength: 3.0,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
