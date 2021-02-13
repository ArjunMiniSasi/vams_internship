///Doctor Treatment Screen
///Importing required packages and classes

import 'package:doctor_treatment_screen/components/circleToggle.dart';
import 'package:doctor_treatment_screen/components/clinical_examination_cards.dart';
import 'package:doctor_treatment_screen/components/medInput.dart';
import 'package:doctor_treatment_screen/components/shortcut_avatars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorTreatmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        ///giving a radial gradient to scaffold body
        body: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.white,
                Color(0xFFF1F1F1),
                Color(0xFFEFF8F9),
              ],
            ),
          ),

          ///contents arranged in scrollable column form
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShortcutAvatars(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/location.png',
                            width: 30,
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 3.0, right: 3, bottom: 3),
                            child: Text(
                              'View Client Location',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Roboto-Regular',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ShortcutAvatars(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/phone-call.png',
                            width: 30,
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 3.0, right: 3, bottom: 3),
                            child: Text(
                              'Call Patient',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Roboto-Regular',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ShortcutAvatars(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/gallery.png',
                            width: 30,
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 3.0, right: 3, bottom: 3),
                            child: Text(
                              'View Animal Images',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Roboto-Regular',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    'CLINICAL EXAMINATION',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClinicalExamCard(
                      img: 'images/thermometer.png',
                      value: '300',
                      heading: 'Temperature',
                      desc: '(Degree Fahrenheit)',
                      color: Color(0xFFFB4D59),
                    ),
                    ClinicalExamCard(
                      img: 'images/lungs.png',
                      value: '150',
                      heading: 'Respiration',
                      desc: '(Rate/Minute)',
                      color: Color(0xFF0E88F3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClinicalExamCard(
                      img: 'images/healthcare.png',
                      value: '72',
                      heading: 'Pulse',
                      desc: '(Rate/Minute)',
                      color: Color(0xFF00D91D),
                    ),
                    ClinicalExamCard(
                      img: 'images/weighing-scale.png',
                      value: '3200',
                      heading: 'Weight',
                      desc: '(Kg/g)',
                      color: Color(0xFF7D00F9),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    'SYMPTOMS',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                        ),
                      ],
                      color: Color(0xffFAFAFA),
                    ),
                    child: Text(
                      'Symptoms',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    'MEDICINE',
                    style: TextStyle(
                      color: Color(0xFF504F51),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF5B73EE),
                      radius: 30,
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                        ),
                      ],
                      color: Color(0xffFAFAFA),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MedInput(
                          text: 'Medicine Name',
                          img: 'images/medical-pills.png',
                        ),
                        MedInput(
                          text: 'Dosage(mg/ml)',
                          img: 'images/pills.png',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleToggle(
                              img: 'images/sunrise.png',
                              label: 'Morning',
                            ),
                            CircleToggle(
                              img: 'images/sun.png',
                              label: 'Noon',
                            ),
                            CircleToggle(
                              img: 'images/night-mode.png',
                              label: 'Evening',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: RaisedButton(
                      color: Color(0xFF5B73EE),
                      //TODO:Add functionality
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Add Medicine',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
