///The pet profile screen
///Importing required packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/dateInput.dart';
import 'components/mcqInput.dart';
import 'components/dropdownInputAnimal.dart';
import 'components/saveButton.dart';

class PetDetailScreen extends StatefulWidget {
  @override
  _PetDetailScreenState createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
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
          backgroundColor: Color(0xff095CE6),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                ///properties of Container widget
                padding: EdgeInsets.all(13),
                color: Color(0xff095CE6),

                ///height is fixed taking 30% of the device screen height
                height: MediaQuery.of(context).size.height * 0.3,

                ///Contents inside Container arranged in a column fashion
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
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

                        ///A button to book the appointment with the vet
                        //TODO: Add functionality of button
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                          ],
                        ),
                      ],
                    ),
                  ],
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
