///Date input fields
///importing required packages and classes

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInput extends StatefulWidget {
  ///label text of the date input field
  final String label;
  DateInput(this.label);
  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  ///setting the date format and variable for storing the date
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  String _selectedDate = '';

  ///Fuction to Invoke the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2100),
        builder: (BuildContext context, Widget child) {
          return Theme(
              data: ThemeData.light().copyWith(
                primaryColor: Color(0xff095CE6),
                accentColor: Color(0xff095CE6),
                colorScheme: ColorScheme.light(
                  primary: Color(0xff095CE6),
                ),
                buttonTheme:
                    ButtonThemeData(textTheme: ButtonTextTheme.primary),
              ),
              child: child);
        });
    if (d != null)
      setState(() {
        _selectedDate = dateFormat.format(d);
      });
  }

  ///building the date input fields
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: GestureDetector(
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_sharp,
                    color: Color(0xff095CE6),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      border: Border.all(
                        color: Color(0xff095CE6),
                      ),
                    ),
                    child: _selectedDate == ''
                        ? Text(
                            'DD/MM/YYYY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        : Text(
                            _selectedDate,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                  ),
                ],
              ),
              onTap: () {
                _selectDate(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
