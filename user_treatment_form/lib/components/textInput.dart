///Text Input Box
///Importing required Packages and classes

import 'package:flutter/material.dart';

class TextInputBox extends StatefulWidget {
  ///hint text, Label text and percentage of width for the text field to occupy
  final String hint;
  final String label;
  final double percentage;
  TextInputBox({this.label, this.hint, this.percentage});
  @override
  _TextInputBoxState createState() => _TextInputBoxState();
}

class _TextInputBoxState extends State<TextInputBox> {
  @override
  Widget build(BuildContext context) {
    ///Text input boxes based on the label texts
    if (widget.label == 'Age(specify month/year)')
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(
                color: Color(0xFFE6E6E6),
                width: 1,
              ),
            ),
            height: 30,
            width: MediaQuery.of(context).size.width * widget.percentage,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFEEF1F1),
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontSize: 9,
                  color: Color(0xFF9A9797),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE6E6E6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE6E6E6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    else
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF7E7E7E),
              fontFamily: 'Lato',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
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
            height: widget.hint != '' ? 30 : 63,
            width: MediaQuery.of(context).size.width * widget.percentage,
            child: TextField(
              maxLines: widget.hint == '' ? 5 : 1,
              keyboardType: widget.hint == ''
                  ? TextInputType.multiline
                  : TextInputType.number,
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontSize: 9,
                  color: Color(0xFF9A9797),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE6E6E6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE6E6E6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  }
}
