///The three buttons at the top
///importing necessary packages and classes

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  @override
  _SelectButtonState createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  ///Setting button state
  bool isSelected1 = true;
  bool isSelected2 = false;
  bool isSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          ///First Button
          GestureDetector(
            onTap: () {
              setState(() {
                ///Rebuilds all the buttons with the given button state
                isSelected1 = true;
                isSelected2 = false;
                isSelected3 = false;
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.29,
              decoration: BoxDecoration(
                ///Button colour toggles between selected and unselected
                color: isSelected1 ? Color(0xff095CE6) : Color(0xff00A5FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),

              ///Content inside button
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xffFDFEFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),

          ///Second Button
          GestureDetector(
            onTap: () {
              setState(() {
                ///Rebuilds all the buttons with the given button state
                isSelected1 = false;
                isSelected2 = true;
                isSelected3 = false;
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.29,
              decoration: BoxDecoration(
                ///Button colour toggles between selected and unselected
                color: isSelected2 ? Color(0xff095CE6) : Color(0xff00A5FF),
              ),

              ///Content inside button
              child: Center(
                child: Text(
                  'Pay method',
                  style: TextStyle(
                    color: Color(0xffFDFEFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),

          ///Third Button
          GestureDetector(
            onTap: () {
              setState(() {
                ///Rebuilds all the buttons with the given button state
                isSelected1 = false;
                isSelected2 = false;
                isSelected3 = true;
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.29,
              decoration: BoxDecoration(
                ///Button colour toggles between selected and unselected
                color: isSelected3 ? Color(0xff095CE6) : Color(0xff00A5FF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),

              ///Content inside button
              child: Center(
                child: Text(
                  'Transactions',
                  style: TextStyle(
                    color: Color(0xffFDFEFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
