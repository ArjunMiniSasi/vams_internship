///Treatment details screen
///Importing required packages

import 'package:flutter/material.dart';
import 'package:treatment_detail/components/docVisitButton.dart';
import 'package:treatment_detail/components/tableContainer.dart';

class TreatmentDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFF8F9),
        body: Padding(
          padding: const EdgeInsets.all(8.0),

          ///components arranged in a scrollable column fashion
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'TREATMENT DETAILS',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Color(0xFF0A36CD),
                      fontFamily: 'Nexa',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.transparent,
                      shadows: [
                        BoxShadow(
                          color: Color(0xFF504F51),
                          spreadRadius: -25,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 3),
                        blurRadius: 3,
                      )
                    ],
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 3),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF0A36CD),
                          radius: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 3),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF0A36CD),
                          radius: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 3),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF0A36CD),
                          radius: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: TableCard(),
                ),
                SizedBox(
                  height: 20,
                ),
                DocVisitButton(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
