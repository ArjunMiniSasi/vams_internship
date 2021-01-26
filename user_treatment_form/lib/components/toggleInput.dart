///Customised Toggle Button
///Importing required classes and packages

import 'package:flutter/material.dart';
import 'package:user_treatment_form/symptomsStorage.dart';

class ToggleInputButtons extends StatefulWidget {
  ///The text to be displayed inside the toggle button
  final String label;
  final double percentage;

  ///an object of the Symptoms model class
  final Symptoms symptoms;
  ToggleInputButtons({this.label, this.percentage, this.symptoms});
  @override
  _ToggleInputButtonsState createState() => _ToggleInputButtonsState();
}

class _ToggleInputButtonsState extends State<ToggleInputButtons> {
  ///variable to set state of the toggle button
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;

          ///for selected symptoms they are added to the list of symptoms
          if (isActive == true)
            widget.symptoms.add(widget.label);

          ///for unselected symptoms they are removed from the list of symptoms
          else
            widget.symptoms.clear(widget.label);
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * widget.percentage,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF0A36CD) : Color(0xFFEEF1F1),
          border: Border.all(
            color: Color(0xFFE6E6E6),
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9,
              fontFamily: 'Lato',
              color: isActive ? Colors.white : Color(0xFF504F51),
            ),
          ),
        ),
      ),
    );
  }
}
