///Medicine details input field
///Importing required packages and classes

import 'package:flutter/material.dart';

class MedInput extends StatefulWidget {
  final String img;
  final String text;
  MedInput({this.img, this.text});
  @override
  _MedInputState createState() => _MedInputState();
}

class _MedInputState extends State<MedInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          widget.img,
          width: 25,
          height: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 35,
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            onChanged: (String k) {
              print(k);
            },
            style: TextStyle(
              fontFamily: 'Roboto-Regular',
              fontSize: 12,
            ),
            decoration: InputDecoration(
              hintText: widget.text,
              hintStyle: TextStyle(
                color: Colors.black87,
                fontSize: 12,
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
