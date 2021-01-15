///Non editable Text field component
///import required packages
import 'package:flutter/material.dart';

class TextDisplayBox extends StatelessWidget {
  final String text;
  final String value;
  TextDisplayBox({this.text, this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        ///Arranged in a column fashion
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///hint text
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),

          ///Non editable text field box with values
          Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
