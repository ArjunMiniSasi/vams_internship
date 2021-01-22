///User Notification Screen
///Import the required packages and classes
import 'package:flutter/material.dart';
import 'cards.dart';
import 'userData.dart';

class UserNotifScreen extends StatefulWidget {
  @override
  _UserNotifScreenState createState() => _UserNotifScreenState();
}

class _UserNotifScreenState extends State<UserNotifScreen> {
  ///intilising the text edit controller for the search text field
  TextEditingController textEditingController = TextEditingController();

  ///converting the user data model into a list and and storing the length of the list
  int k = UserData().userDetails.keys.toList().length;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: Container(
          child: Column(
            ///contents arranged in column fashion
            children: [
              ///search bar text field
              Padding(
                padding: const EdgeInsets.all(10.0),
                ///changing the default colour to match the app theme
                child: Theme(
                  data: ThemeData(
                    primaryColor: Color(0xff095CE6),
                    primaryColorDark: Color(0xff095CE6),
                  ),
                  child: TextField(
                    cursorColor: Color(0xff095CE6),
                    controller: textEditingController,
                    ///styling the search box text field
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Search',
                      labelText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff095CE6),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff095CE6),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff095CE6),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              ///Utilizing the remaining space to create an unlimited list of cards
              Expanded(
                child: ListView.builder(
                  itemCount: k,
                  itemBuilder: (context, index) {
                    return NotifCards(
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
