///Left column cells
///Importing Required Packages

import 'package:flutter/material.dart';

class LeftCells extends StatelessWidget {
  ///child widget
  final Widget dataWidget;
  LeftCells({this.dataWidget});
  @override
  Widget build(BuildContext context) {
    ///Table cell returning the left column cell
    return TableCell(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.425,
        color: Color(0xFFF6F6F6),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dataWidget,
          ],
        ),
      ),
    );
  }
}
