///Circle Toggle Button
///Importing required packages and classes

import 'package:flutter/material.dart';

class CircleToggle extends StatefulWidget {
  final String img;
  final String label;
  CircleToggle({this.img, this.label});
  @override
  _CircleToggleState createState() => _CircleToggleState();
}

class _CircleToggleState extends State<CircleToggle> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //TODO:Add functionality
      onTap: () {
        setState(() {
          state = !state;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(0, 1),
              blurRadius: 4,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 28,
          backgroundColor: state ? Color(0xFF99DEF8) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.img,
                width: 25,
                height: 25,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 8,
                  fontFamily: 'Roboto-Regular',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
