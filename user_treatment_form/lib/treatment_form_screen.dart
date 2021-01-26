///User Treatment form screen
///Importing required Packages and classes

import 'package:flutter/material.dart';
import 'package:user_treatment_form/components/dropdownInput.dart';
import 'package:user_treatment_form/components/pictureInput.dart';
import 'package:user_treatment_form/components/radioInput.dart';
import 'package:user_treatment_form/components/submitButton.dart';
import 'package:user_treatment_form/components/toggleInput.dart';
import 'package:user_treatment_form/symptomsStorage.dart';
import 'components/textInput.dart';

class TreatmentForm extends StatefulWidget {
  @override
  _TreatmentFormState createState() => _TreatmentFormState();
}

class _TreatmentFormState extends State<TreatmentForm> {
  ///creating an object of symptoms model class
  Symptoms symptoms = Symptoms();
  @override
  Widget build(BuildContext context) {
    ///Arranges the components in a Column Fashion inside a Card
    return Scaffold(
      backgroundColor: Color(0xFF3EFFB7),

      ///Scrollable card
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),

              ///Card contents arranged in column fashion
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DOG',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nexa',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'DISEASE OBSERVATORY FORM',
                      style: TextStyle(
                        color: Colors.transparent,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            spreadRadius: -25,
                            offset: Offset(0, -5),
                          ),
                        ],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nexa',
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff095CE6),
                        decorationThickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DropDownInput(),
                    SizedBox(
                      height: 15,
                    ),
                    RadioInput(),
                    Text(
                      'Age(specify month/year)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7E7E7E),
                        fontFamily: 'Lato',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInputBox(
                          label: 'Age(specify month/year)',
                          hint: 'year',
                          percentage: 0.35,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        TextInputBox(
                          label: 'Age(specify month/year)',
                          hint: 'month',
                          percentage: 0.35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputBox(
                      label: 'Days since symptoms first appeared',
                      hint: 'Number of Days',
                      percentage: 0.8,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Symptoms',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7E7E7E),
                        fontFamily: 'Lato',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      ///Toggle buttons
                      children: [
                        Row(
                          children: [
                            ToggleInputButtons(
                              symptoms: symptoms,
                              label: 'Vomitting',
                              percentage: 0.23,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            ToggleInputButtons(
                              symptoms: symptoms,
                              label: 'Fever',
                              percentage: 0.23,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            ToggleInputButtons(
                              symptoms: symptoms,
                              label: 'Injury',
                              percentage: 0.23,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            ToggleInputButtons(
                              symptoms: symptoms,
                              label: 'Hair Loss',
                              percentage: 0.23,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            ToggleInputButtons(
                              symptoms: symptoms,
                              label: 'Difficulty in Whelping(Giving birth)',
                              percentage: 0.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputBox(
                      label: 'Any other symptoms',
                      hint: '',
                      percentage: 0.8,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Add Animal Pictures',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7E7E7E),
                        fontFamily: 'Lato',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        AddPictureBox(
                          plus: '+',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        AddPictureBox(
                          plus: '+',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        AddPictureBox(
                          plus: '+',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SubmitButton(symptoms),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
