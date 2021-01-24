///Importing required packages and classes
///Picture Input Box

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';

class AddPictureBox extends StatelessWidget {
  final String plus;
  AddPictureBox({this.plus});
  @override
  Widget build(BuildContext context) {
    if (plus == '+')

      ///Container without Image
      return FDottedLine(
        color: Color(0xFF102DE8),
        width: 120,
        height: 100,
        dottedLength: 2,
        space: 1,
        //TODO: add functionality to upload image
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 80,
            child: Center(
              child: Text(
                plus,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF0A36CD),
                  fontFamily: 'Lato',
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF9FDFF),
            ),
          ),
        ),
      );
    else

      ///Container with image
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 3.0, right: 6.5),
            height: 60,
            width: 80,
            child: Image(
              image: NetworkImage(
                  'https://cdn.shopify.com/s/files/1/0810/5967/files/lab_retriever_large.jpg?v=1490212755'),
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF2680EB),
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            top: 0.0,
            child: GestureDetector(
              onTap: () {},
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 8,
                  child: Center(
                    child: Icon(
                      Icons.close,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          )
        ],
      );
  }
}
