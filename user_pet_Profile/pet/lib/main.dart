///The main class of the application from where the application starts
import 'package:flutter/material.dart';
//import 'user_profile.dart';
import 'pet_profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PetDetailsScreen(),
      //UserProfile(),
    ),
  );
}
