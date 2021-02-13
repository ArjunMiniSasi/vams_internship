///Navigation Circle Button
///Importing required packages and classes

import 'package:flutter/material.dart';

class ShortcutAvatars extends StatelessWidget {
  final Widget label;
  ShortcutAvatars(this.label);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //TODO:Add functionality
      onTap: () {},
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
          backgroundColor: Colors.white,
          radius: 37,
          child: label,
        ),
      ),
    );
  }
}
