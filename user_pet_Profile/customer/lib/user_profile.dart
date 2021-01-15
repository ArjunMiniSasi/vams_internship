///Importing the necessary packages and classes to use
///the widgets under them
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/selectButton.dart';
import 'components/textDisplayBox.dart';
import 'components/saveButton.dart';

///The User Profile Screen
class UserProfile extends StatelessWidget {
  @override

  ///build method used for building the application into a device
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFEFF),

      ///The Appbar where the title, additional menu options are displayed
      appBar: AppBar(
        automaticallyImplyLeading: false,

        /// made to false to not add the default back button when multiple screens are present
        title: Padding(
          ///overall padding for appbar contents
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

              ///Actual title of the app(here a logo) as it is part of a multiscreen app
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
              SizedBox(
                width: 40,
              ),

              ///Trailing menu icon for additional options
              //TODO: Add functionality of menu options inside onTap(){}
              GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.ellipsis,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),

        ///Colour and elevation of AppBar
        backgroundColor: Color(0xff095CE6),
        elevation: 0,
      ),

      ///A vertical scrollable interface
      body: SingleChildScrollView(
        ///Layout of the Screen using columns and rows
        child: Column(
          children: <Widget>[
            ///Components(of the type Widget) are arranged in a column fashion
            Container(
              ///properties of Container widget
              padding: EdgeInsets.all(13),
              color: Color(0xff095CE6),

              ///height is fixed taking 40% of the device screen height
              height: MediaQuery.of(context).size.height * 0.4,

              ///Contents inside Container arranged in a column fashion
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                            color: Color(0xffFDFEFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),

                      ///A button to book the appointment with the vet
                      //TODO: Add functionality of button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(12),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff133ACD),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              ///Contents inside button
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.stethoscope,
                                  color: Color(0xffFDFEFF),
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  'Book Vet',
                                  style: TextStyle(
                                      color: Color(0xffFDFEFF), fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 53,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            ///default user profile avatar
                            //TODO: Replace the below link with url of user's image
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png'),
                            backgroundColor: Color(0xffE8E8E8),
                            radius: 50,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),

                        ///dafault details
                        //TODO: Replace the name and other details with user's details
                        Text(
                          'Dr n n sasi Narayanan',
                          style: TextStyle(
                              color: Color(0xffFDFEFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.15),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'User since October 2020',
                          style: TextStyle(
                              color: Color(0xffFDFEFF),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///All elements are placed in a column fashion
                ///A state changing widget is called inside a
                ///main stateless widget to keep the code simple
                SelectButton(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          color: Colors.grey,
                          blurRadius: 3),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///The default details of the vet are given
                      //TODO:Replace the value of the property 'value' to give the user's details
                      TextDisplayBox(
                        text: 'My Name',
                        value: 'Dr n n sasi',
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TextDisplayBox(
                        text: 'Last Name',
                        value: 'Narayanan',
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TextDisplayBox(
                        text: 'Phone number',
                        value: '9876543210',
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TextDisplayBox(
                        text: 'Street Address',
                        value: '1313 Mockingbird Lane',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                ///Reusable Widget
                SaveButton(),
                SizedBox(
                  height: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
