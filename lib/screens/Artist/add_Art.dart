import 'package:art/component/button.dart';
import 'package:art/component/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';

class NewArt extends StatefulWidget {
  @override
  _NewArtState createState() => _NewArtState();
}

class _NewArtState extends State<NewArt> {
  //**
  bool _onOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("New Art"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              ImageUploadContainer(
                //TODO:IMAGE UPLOAD DOTTED CONTAINER
                onTap: () {},
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
          SizedBox(
            height: 20.0,
          ),

          Text(
            "Basic Info",
            style: CardTitleTxtStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Choose Category",
            style: CardSubTitleStyle,
          ),
          SizedBox(
            height: 8.0,
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
          Text("Sub Category", style: CardSubTitleStyle),
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
          Text("Price", style: CardSubTitleStyle),
          SizedBox(height: 8.0),

          Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              width: 330.0,
              height: 50.0,
              decoration: BoxDecoration(
                boxShadow: kElevationToShadow[1],
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),

              //***** Price
              //TODO: PRICE
              child: TextFormField(
                decoration: kTxtField.copyWith(hintText: 'Price'),
              )),
          SizedBox(height: 15.0),

          //************* Price
          Text("Choose Product Detail", style: CardSubTitleStyle),
          SizedBox(height: 8.0),
          Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              width: 330.0,
              height: 50.0,
              decoration: BoxDecoration(
                boxShadow: kElevationToShadow[1],
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
//TODO:Product Detail
              //***** ENTER PASSWORD TEXT FIELD
              child: TextFormField(
                decoration:
                    kTxtField.copyWith(hintText: 'Choose Product Detail'),
              )),

          SizedBox(
            height: 15.0,
          ),
          Text("Dimension", style: CardSubTitleStyle),
          SizedBox(height: 8.0),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //TODO:Height
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: kTxtField.copyWith(hintText: 'height'),
                  )),
              SizedBox(
                width: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //TODO:Width
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: kTxtField.copyWith(hintText: 'width'),
                  )),
              SizedBox(
                width: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //TODO:depth
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: kTxtField.copyWith(hintText: 'depth'),
                  )),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Text("Description", style: CardSubTitleStyle),
          SizedBox(height: 8.0),
          Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              width: 330.0,
              height: 150.0,
              decoration: BoxDecoration(
                boxShadow: kElevationToShadow[1],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                decoration: kTxtField.copyWith(hintText: ''),
                maxLines: null,
                minLines: null,
                expands: true,
              )),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Status",
            style: CardSubTitleStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Availability"),
            Switch(
              //TODO: Availability BUTTON
              // title: Text('Out of Stock'),
              value: _onOff,
              onChanged: (bool value) {
                // setState(() {
                //   _onOff = value;
                // });
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Active"),
            Switch(
              //TODO: Active BUTTON
              // title: Text('Out of Stock'),
              value: _onOff,
              onChanged: (bool value) {},
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Sold"),
            Switch(
              //TODO: Sold BUTTON
              // title: Text('Out of Stock'),
              value: _onOff,
              onChanged: (bool value) {
                // setState(() {
                //   _onOff = value;
                // });
              },
            ),
          ]),
          SizedBox(height: 15.0),
          Button(
            //TODO: POST BUTTON
            onPress: () {},
            buttonTitle: "Post",
            colour: Color(0xFFFF3D3A3A),
          )
        ]),
      )),
    );
  }

  List<String> _category = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4'
  ]; //TODO: Country LIST
  String _selectedCategory;
  List<String> _subCountry = [
    'Sub Category 1',
    'Sub Category 2',
    'Sub Category 3',
    'Sub Category 4'
  ]; //TODO: Country LIST
  String _selectedSubCountry;
}

class ImageUploadContainer extends StatelessWidget {
  ImageUploadContainer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: DashedContainer(
          child: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.grey,
            ),
            height: 100.0,
            width: 100.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          ),
          dashColor: Colors.grey.shade400,
          borderRadius: 6.0,
          dashedLength: 25.0,
          blankLength: 18.0,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
