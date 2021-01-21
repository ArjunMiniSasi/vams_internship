import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:vams_internship/ec/screens/destination_screen.dart';
// import 'package:vams_internship/ec/screens/home_screen.dart';
// import 'package:vams_internship/ec/widgets/destination_carousel.dart';
// import 'package:vams_internship/ec/widgets/hotel_carousel.dart';

// import '../login.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dail extends StatefulWidget {
  @override
  _DailState createState() => _DailState();
}

class _DailState extends State<Dail> {
  _makingPhoneCall() async {
    const url = 'tel:9100210026';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          '             VAMS',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            iconSize: 40,
            tooltip: 'Show Snackbar', onPressed: () {},

            // onPressed: () {
            //   scaffoldKey.currentState.showSnackBar(snackBar);
            // },
          ),
          // IconButton(
          //   icon: const Icon(Icons.navigate_next),
          //   tooltip: 'Next page',
          //   // onPressed: () {
          //   //   openPage(context);
          //   // },
          // ),
        ],
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          
          children: [Text("Ajay"),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  FlatButton(
                    onPressed: () => {_makingPhoneCall()},
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.red,
                    padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
                    child: Row(
                      // Replace with a Row for horizontal icon + text
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Icon(
                          Icons.thumb_up,
                          size: 40.0,
                        ),
                        Text("YES")
                      ],
                    ),
                  ),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    onPressed: () => {},
                    color: Colors.blueAccent,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Row(
                      // Replace with a Row for horizontal icon + text
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.thumb_down_sharp, size: 40.0),
                        Text("NO"),
                      ],
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
