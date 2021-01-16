///The pet profile screen
///Importing required packages

import 'package:flutter/material.dart';
import 'components/dateInput.dart';
import 'components/mcqInput.dart';
import 'components/dropdownInputAnimal.dart';
import 'components/saveButton.dart';

class PetDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        appBar: PreferredSize(
          ///Setting height of Appbar
          preferredSize:
              Size(double.infinity, MediaQuery.of(context).size.height * 0.25),
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,

                ///Appbar components
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff095CE6),

                              ///VAMS logo
                              backgroundImage: AssetImage(
                                'images/logo.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///Colour and elevation of AppBar
                backgroundColor: Color(0xff095CE6),
                elevation: 0,
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                color: Color(0xff095CE6),
                height: MediaQuery.of(context).size.height * 0.16616,
                child: Column(
                  ///Elements arranged in a column fashion
                  ///Alignment of contents
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pet Profile',
                          style: TextStyle(
                              color: Color(0xffFDFEFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          ///Layout of the Screen using columns and rows
          ///Scrollable Vertical Layout
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Color(0xff095CE6),
                width: double.infinity,
                padding: EdgeInsets.all(12),
                child: CircleAvatar(
                  radius: 53,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    ///default pet profile avatar
                    //TODO: Replace the below link with url of pet's image
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdqD5-0_C08PTAunaqPy8_JTOiN0Ckz8fQUA&usqp=CAU'),
                    backgroundColor: Color(0xffE8E8E8),
                    radius: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              ///Invoking dropDown Input Buttons
              DropDownInputType(),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Container(
                  ///Container containing the date fields
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: Row(
                    ///elements arranged in row fashioned manner
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///Date Input Field classes invoked
                      DateInput('Date of Birth'),
                      SizedBox(
                        width: 2,
                      ),
                      DateInput('Last Vaccination'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              ///Radio Input Field class invoked
              RadioInput(),
              SizedBox(
                height: 12,
              ),
              Center(
                child: SaveButton(),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
