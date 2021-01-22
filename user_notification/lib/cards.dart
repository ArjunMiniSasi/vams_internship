///The card styled notification
///importing the required packages and classes

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'userData.dart';

class NotifCards extends StatelessWidget {
  ///the index specifies the index of the user modal list
  final int index;
  NotifCards({this.index});

  @override
  Widget build(BuildContext context) {
    ///assigning the different hardcoded data to variables
    String name = UserData().userDetails.values.elementAt(index).elementAt(0);
    String mail = UserData().userDetails.values.elementAt(index).elementAt(1);
    String text = UserData().userDetails.values.elementAt(index).elementAt(2);
    String time = UserData().userDetails.values.elementAt(index).elementAt(3);
    String date = UserData().userDetails.values.elementAt(index).elementAt(4);

    ///variable to determine if the index value is odd or even to give alternate colour styling
    bool oddEven = index % 2 == 0 ? false : true;

    ///Card
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),

        ///contents of the card
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: oddEven ? Color(0xff095CE6) : Colors.green.shade400,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/vamslogo2.png'),
                    radius: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),

            ///a small vertical line to divide contents
            VerticalDivider(
              width: 3,
              color: Colors.grey.shade300,
            ),
            SizedBox(
              width: 8,
            ),
            Flexible(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Center(
                            child: Text(
                              name.substring(0, 1),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          backgroundColor: oddEven
                              ? Color(0xff095CE6)
                              : Colors.green.shade400,
                          radius: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  color: oddEven
                                      ? Color(0xff095CE6)
                                      : Colors.green.shade400,
                                ),
                              ),
                              Text(
                                mail,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      text,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
