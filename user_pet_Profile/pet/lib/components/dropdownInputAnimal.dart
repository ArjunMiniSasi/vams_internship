///Dropdown Input fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownInputType extends StatefulWidget {
  @override
  _DropDownInputTypeState createState() => _DropDownInputTypeState();
}

class _DropDownInputTypeState extends State<DropDownInputType> {
  ///creating list of animals
  List<String> animals = [
    'Cat',
    'Cow',
    'Chicken',
    'Dog',
    'Duck',
    'Goat',
    'Pig',
    'Sheep',
    'Fish',
    'Horse'
  ];

  ///creating lists for storing breeds of different animals mentioned in the above list
  List<String> catBreed = [
    'Abyssian',
    'American bobtail',
    'Persian cat',
    'Birman',
    'Egyptian mau',
    'Pixiebob',
    'Ragamuffin'
  ];
  List<String> cowBreed = [
    'Angus',
    'Holstein Friesian',
    'Simmental',
    'Galloway',
    'Limousin',
  ];
  List<String> dogBreed = [
    'German Sheperd',
    'Golden Retriever',
    'Labrador',
    'Pug',
    'Husky',
    'Boxer',
    'Rottweiler',
  ];
  List<String> chickenBreed = [
    'Leghorn',
    'Rhode Island',
    'Plymouth rock',
    'Polish',
    'Brahma',
  ];
  List<String> duckBreed = [
    'Indian runner',
    'American pekin',
    'Khaki campbell',
    'Crested',
    'Cayuga',
  ];
  List<String> goatBreed = [
    'Boer',
    'Anglo-nubian',
    'Alpine',
    'Saanen',
    'American pygmy',
  ];
  List<String> pigBreed = [
    'Large white',
    'Berkshire',
    'Duroc',
    'Hampshire',
    'Miniature',
    'American Yorkshire',
  ];
  List<String> sheepBreed = [
    'Merino',
    'Suffolk',
    'Dorper',
    'Dorset horn',
    'Rambouillet',
  ];
  List<String> fishBreed = [
    'Goldfish',
    'Angelfish',
    'chicken',
    'Veiltail',
    'Ryukin',
    'Butterfly koi',
    'Guppy',
  ];
  List<String> horseBreed = [
    'Arabian',
    'Thoroughbred',
    'Shire',
    'Morgan',
    'Cob',
    'Barb',
  ];

  ///setting an empty list for dependent drop down
  List<String> breed = [];
  String selectedAnimal;
  String selectedBreed;

  @override
  Widget build(BuildContext context) {
    ///building the drop down fields
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        ///dropdown list with labels arranged in column fashion
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.97,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///drop down to choose animal
                Text(
                  'Animal Type',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff00A5FF),
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15),
                        value: selectedAnimal,

                        ///converting list of string to list of DropdownMenuItems list
                        items: animals
                            .map(
                              (String value) => DropdownMenuItem(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                                value: value,
                              ),
                            )
                            .toList(),

                        ///function call to build the dependent list
                        onChanged: onChangedCallback,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.97,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///animal breed dropdown
                Text(
                  'Animal Breed',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    //height: 40,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff00A5FF),
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15),
                        isExpanded: true,
                        value: selectedBreed,
                        items: breed
                            .map(
                              (String value) => DropdownMenuItem(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (breed) {
                          setState(() {
                            selectedBreed = breed;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///function to assign breed list values according to animal type
  void onChangedCallback(animal) {
    if (animal == 'Cat')
      breed = catBreed;
    else if (animal == 'Cow')
      breed = cowBreed;
    else if (animal == 'Dog')
      breed = dogBreed;
    else if (animal == 'Goat')
      breed = goatBreed;
    else if (animal == 'Pig')
      breed = pigBreed;
    else if (animal == 'Sheep')
      breed = sheepBreed;
    else if (animal == 'Duck')
      breed = duckBreed;
    else if (animal == 'Chicken')
      breed = chickenBreed;
    else if (animal == 'Fish')
      breed = fishBreed;
    else if (animal == 'Horse')
      breed = horseBreed;
    else
      breed = [];
    setState(() {
      selectedBreed = null;
      selectedAnimal = animal;
    });
  }
}
