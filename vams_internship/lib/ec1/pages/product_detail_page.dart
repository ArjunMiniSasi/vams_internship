import 'package:flutter/material.dart';
import 'package:vams_internship/ec1/theme/colors.dart';
import 'package:vams_internship/login.dart';
import 'package:vams_internship/scroling/dail.dart';

class ProductDetailPage extends StatefulWidget {
  final String id;
  final String name;
  final String code;
  final String img;
  final String price;
  final String promotionPrice;
  final String discription;
  final List size;
  final List color;

  const ProductDetailPage(
      {Key key,
      this.id,
      this.name,
      this.code,
      this.img,
      this.price,
      this.promotionPrice,
      this.discription,
      this.size,
      this.color})
      : super(key: key);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int activeSize = 0;
  int activeColor = 0;
  String activeImg = '';
  int qty = 1;
  @override
  void initState() {
    super.initState();
    setState(() {
      activeImg = widget.img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomSheet: getBottom(),
    );
  }

  Widget getBottom() {
    //  var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dail()),
            ),
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(40.0)),
          color: Colors.deepOrange,
          padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
          child: Row(
            // Replace with a Row for horizontal icon + text
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Icon(
                Icons.call,
                size: 40.0,
              ),
              Text("call to client")
            ],
          ),
        ),
        FlatButton(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(40.0)),
          onPressed: () => {},
          color: Colors.green,
          padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
          child: Row(
            // Replace with a Row for horizontal icon + text
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.mail, size: 40.0),
              Text("mail to client"),
            ],
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 158, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "VAMS",
                    style: TextStyle(
                        fontSize: 30,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 20,
              child: Hero(
                tag: widget.id.toString(),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      image: DecorationImage(
                          image: NetworkImage(activeImg), fit: BoxFit.contain)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 90, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    " ",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Wrap(
                          children: List.generate(widget.color.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            activeColor = widget.color[index]['id'];
                            activeImg = widget.color[index]['value'];
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.color[index]['value']),
                                  fit: BoxFit.cover),
                              // border: Border.all(
                              //   width: 0,
                              //   color: activeColor == widget.color[index]['id']
                              //       ? primary
                              //       : Colors.transparent,
                              // ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    );
                  }))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   "",
                  //   style: TextStyle(fontSize: 16, height: 1.5),
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      widget.name,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 36,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 25),
              child: Container(
                child: Text(
                  widget.discription,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Price :\n",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Flexible(
                      child: Row(
                    children: <Widget>[
                      Text(
                        "INR : " + widget.promotionPrice,
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "INR : " + widget.price,
                        style: TextStyle(
                            fontSize: 20,
                            height: 1.5,
                            color: primary,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "C.ID :",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      widget.code,
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Text(
            //         "Size :",
            //         style: TextStyle(fontSize: 16, height: 1.5),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Flexible(
            //           child: Wrap(
            //               children: List.generate(widget.size.length, (index) {
            //         return Padding(
            //           padding: const EdgeInsets.only(right: 20),
            //           child: InkWell(
            //             onTap: () {
            //               setState(() {
            //                 activeSize = widget.size[index]['id'];
            //               });
            //             },
            //             child: Container(
            //               decoration: BoxDecoration(
            //                   border: Border.all(
            //                     width: 2,
            //                     color: activeSize == widget.size[index]['id']
            //                         ? primary
            //                         : Colors.transparent,
            //                   ),
            //                   borderRadius: BorderRadius.circular(5)),
            //               child: Padding(
            //                 padding: const EdgeInsets.only(
            //                     top: 12, bottom: 12, right: 15, left: 15),
            //                 child: Text(
            //                   widget.size[index]['value'],
            //                   style: TextStyle(fontSize: 16, height: 1.5),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         );
            //       }))),
            //     ],
            //   ),
            // ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Qty :",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          if (qty > 1) {
                            setState(() {
                              qty = --qty;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: black.withOpacity(0.5))),
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.exposure_minus_1,
                            color: black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        qty.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            qty = ++qty;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: black.withOpacity(0.5))),
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.exposure_plus_1_rounded,
                            color: black.withOpacity(0.5),
                          ),
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // getBottom()
          ],
        ),
      ),
    );
  }
}
