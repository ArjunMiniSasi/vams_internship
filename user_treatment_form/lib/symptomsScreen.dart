///Symptoms screen to display selected symptoms
///Importing Required packages

import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
  final List list;
  SymptomsScreen({this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF0A36CD),
        title: Text(
          'Main Symptoms',
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///Displays list of symptoms as a list view if there is any selected symptoms else
      ///displays a text indicating no symptoms are selected
      body: list.length != 0
          ? Center(
              child: Container(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        list[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A36CD),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          : Center(
              child: Text(
                'No symptoms selected',
                style: TextStyle(
                  color: Color(0xFF0A36CD).withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
    );
  }
}
