///Radio button Input field class
///importing required packages

import 'package:flutter/material.dart';

///defining an enum to contain the options of the radio button
enum Sex { male, female }

class RadioInput extends StatefulWidget {
  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {
  Sex _sex = Sex.male;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),

          ///Elements arranged in row fashioned manner
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SEX',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                ///setting the width to take 20% of device screen width
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///Radio buttons with labels arranged in row fashion
                  Radio(
                      activeColor: Color(0xff095CE6),
                      value: Sex.male,
                      groupValue: _sex,
                      onChanged: (Sex value) {
                        setState(() {
                          _sex = value;
                        });
                      }),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Radio(
                      activeColor: Color(0xff095CE6),
                      value: Sex.female,
                      groupValue: _sex,
                      onChanged: (Sex value) {
                        setState(() {
                          _sex = value;
                        });
                      }),
                  Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
