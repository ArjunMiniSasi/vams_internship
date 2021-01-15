///The save button component widget
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Button within a container takes the dimensions of the container
    ///if the dimensions are fixed
    return Container(
      ///90% of device screen width  is covered
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        ///button styling with colour, border etc
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(12),
          primary: Color(0xff095CE6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        //TODO: Add functionality to the button
        onPressed: () {},
        child: Text(
          'SAVE',
          style: TextStyle(
            color: Color(0xffFDFEFF),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
