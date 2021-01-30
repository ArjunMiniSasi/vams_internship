///Table of details
///Importing required classes and packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treatment_detail/components/leftcells.dart';
import 'package:treatment_detail/components/rightcell.dart';

class TableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///laying out the table inside a container card
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
      ),

      ///Table with data
      child: Table(
        children: [
          TableRow(
            children: [
              LeftCells(
                dataWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      color: Color(0xFF0A36CD),
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Breed',
                      style: TextStyle(
                        textBaseline: TextBaseline.alphabetic,
                        color: Color(0xFF504F51),
                        fontSize: 10,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
              RightCells(
                dataWidget: Text(
                  'Middle White Yorkshire cross breed',
                  style: TextStyle(
                    color: Color(0xFF615F5F),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Age',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Text(
                  '6 months',
                  style: TextStyle(
                    color: Color(0xFF615F5F),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Symptoms Reported',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Text(
                  'Fatigue and appetite loss, swollen udder, reduced milk production, difficulty in calving',
                  style: TextStyle(
                    color: Color(0xFF615F5F),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Other details',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Text(
                  'Unable to drink water',
                  style: TextStyle(
                    color: Color(0xFF615F5F),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Treatment Status',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Row(
                  children: [
                    Text(
                      'Pending',
                      style: TextStyle(
                        color: Color(0xFFFF4D4D),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Text('/'),
                    Text(
                      'Ongoing',
                      style: TextStyle(
                        color: Color(0xFF0A36CD),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Text('/'),
                    Text(
                      'Completed',
                      style: TextStyle(
                        color: Color(0xFF059736),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Treatment Start Date',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '22-01-2021',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Text(
                      '03:30 pm',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 8,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Treatment End Date',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '28-01-2021',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Text(
                      '05:30 pm',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 8,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              LeftCells(
                dataWidget: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Payment Status',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 10,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
              ),
              RightCells(
                dataWidget: Row(
                  children: [
                    Text(
                      'Paid',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Color(0xFF059736),
                        child: Icon(
                          Icons.check,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '/ Not Paid',
                      style: TextStyle(
                        color: Color(0xFF615F5F),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Color(0xFFE04F5F),
                        child: Icon(
                          Icons.clear,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
        border: TableBorder.symmetric(
          inside: BorderSide(
            color: Color(0xFFD8D8D8),
            width: 1,
          ),
        ),
      ),
    );
  }
}
