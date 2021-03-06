import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:vams_internship/ec1/constant/data_json.dart';
import 'package:vams_internship/ec1/pages/product_detail_page.dart';


class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "VAMS PET SOPPING",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.shopping_cart),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: List.generate(dataItems.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ProductDetailPage(
                                id: dataItems[index]['id'].toString(),
                                name: dataItems[index]['name'],
                                code: dataItems[index]['code'],
                                img: dataItems[index]['img'],
                                price: dataItems[index]['price'].toString(),
                                promotionPrice: dataItems[index]
                                        ['promotionPrice']
                                    .toString(),
                                discription: dataItems[index]['discription'],
                                size: dataItems[index]['size'],
                                color: dataItems[index]['color'],
                              )));
                },
                child: Card(
                    elevation: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Hero(
                          tag: dataItems[index]['id'].toString(),
                          child: Container(
                            width: (size.width - 16) / 2,
                            height: (size.width - 16) / 2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(dataItems[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: FavoriteButton(
                              valueChanged: (_isFavorite) {
                                print('Is Favorite $_isFavorite)');
                              },
                            )
                            // Text(
                            //   dataItems[index]['code'],
                            //   style: TextStyle(fontSize: 16),
                            // ),
                            ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                          " INR : "  +  dataItems[index]['price'].toString(),
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              );
            }),
          )
        ],
      ),
    );
  }
}
