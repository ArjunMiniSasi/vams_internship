///The submit button component widget
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Button within a container takes the dimensions of the container
    ///if the dimensions are fixed
    return Center(
      child: Container(
        ///60% of device screen width  is covered
        width: MediaQuery.of(context).size.width * 0.6,
        child: ElevatedButton(
          ///button styling with colour, border etc
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12),
            primary: Color(0xFF0A36CD),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          //TODO: Add functionality to the button
          onPressed: () {},
          child: Text(
            'SUBMIT',
            style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
