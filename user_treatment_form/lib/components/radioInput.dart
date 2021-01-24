///Radio Button Inputs
///Importing required Packages and classes

import 'package:flutter/material.dart';

enum Sex { male, female, unselected }

class RadioInput extends StatefulWidget {
  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {
  ///group Value of the selection
  Sex _sex = Sex.unselected;
  @override
  Widget build(BuildContext context) {
    return Column(
      ///contents arranged in Column Fashion
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(
            color: Color(0xFF7E7E7E),
            fontSize: 12,
            fontFamily: 'Lato',
          ),
        ),
        Row(
          ///Buttons and labels arranged in row fashion
          children: [
            Text(
              "Male",
              style: TextStyle(
                color: Color(0xFF504F51),
                fontSize: 9,
                fontFamily: 'Lato',
              ),
            ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Color(0xFF8B96F5),
              ),
              child: Radio(
                value: Sex.male,
                groupValue: _sex,
                onChanged: (Sex val) {
                  setState(() {
                    _sex = val;
                  });
                },
                activeColor: Color(0xFF8B96F5),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Female",
              style: TextStyle(
                color: Color(0xFF504F51),
                fontSize: 9,
                fontFamily: 'Lato',
              ),
            ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Color(0xFFF58BD2),
              ),
              child: Radio(
                value: Sex.female,
                groupValue: _sex,
                onChanged: (Sex val) {
                  ///Value of the selected item is stored in groupValue
                  setState(() {
                    _sex = val;
                  });
                },
                activeColor: Color(0xFFF58BD2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
