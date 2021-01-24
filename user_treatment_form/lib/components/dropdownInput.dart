///DropDown input for selecting breed
///Importing required classes and packages

import 'package:flutter/material.dart';

class DropDownInput extends StatefulWidget {
  @override
  _DropDownInputState createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {
  ///List of different dog breeds
  List<String> breed = [
    'German Shepard',
    'Golden Retriever',
    'Labrador',
    'Pug',
    'Husky',
    'Boxer',
    'Rottweiler',
  ];

  ///variable to store selected breed
  String selectedBreed;
  @override
  Widget build(BuildContext context) {
    return Column(
      ///contents arranged in column fashion
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Breed/Category',
          style: TextStyle(
            fontFamily: 'Lato',
            color: Color(0xFF7E7E7E),
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.085,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color: Color(0xFFEEF1F1),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(
              color: Color(0xFFE6E6E6),
              width: 1,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text(
                'Select',
                style: TextStyle(
                  color: Color(0xFF9A9797),
                  fontSize: 9,
                  fontFamily: 'Lato',
                ),
              ),
              value: selectedBreed,
              items: breed
                  .map(
                    (b) => DropdownMenuItem(
                      child: Text(b),
                      value: b,
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedBreed = newValue;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
