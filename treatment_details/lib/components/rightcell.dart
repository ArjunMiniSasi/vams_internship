///Right column cells
///Importing Required Packages

import 'package:flutter/material.dart';

class RightCells extends StatelessWidget {
  ///child widget
  final Widget dataWidget;
  RightCells({this.dataWidget});
  @override
  Widget build(BuildContext context) {
    ///Table cell returning the right column cell
    return TableCell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 50,
        child: Center(
          child: dataWidget,
        ),
      ),
    );
  }
}
