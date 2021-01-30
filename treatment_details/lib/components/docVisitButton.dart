///Importing required packages and classes
///Doctor visit button

import 'package:flutter/material.dart';

class DocVisitButton extends StatefulWidget {
  @override
  _DocVisitButtonState createState() => _DocVisitButtonState();
}

class _DocVisitButtonState extends State<DocVisitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        color: Color(0xFF0A36CD),
        onPressed: () {},
        child: Text(
          'Mark Doctor Visited',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',
          ),
        ),
      ),
    );
  }
}
