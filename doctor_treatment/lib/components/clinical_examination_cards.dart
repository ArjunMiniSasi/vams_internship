///Clinical Exam Card
///Importing required packages and classes

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClinicalExamCard extends StatelessWidget {
  final String img;
  final String heading;
  final String desc;
  final Color color;
  final String value;
  ClinicalExamCard({this.img, this.desc, this.heading, this.color, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.46,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(0, 1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          heading == 'Temperature'
              ? SizedBox(
                  width: 0,
                )
              : SizedBox(
                  width: 5,
                ),
          VerticalDivider(
            indent: 1,
            endIndent: 1,
            width: 3,
            color: Colors.black.withOpacity(0.5),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Roboto-Regular',
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 7,
                  fontFamily: 'Roboto-Regular',
                ),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width:
                heading == 'Temperature' || heading == 'Respiration' ? 35 : 50,
            height: 60,
            child: Center(
              child: TextField(
                scrollPadding: EdgeInsets.zero,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18, color: color),
                decoration: InputDecoration.collapsed(
                  hintText: value,
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: color.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
