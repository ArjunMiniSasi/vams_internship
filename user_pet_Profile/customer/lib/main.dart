///The main class of the application from where the application starts
import 'package:flutter/material.dart';
import 'package:vams_pet_user_profile/user_profile.dart';
import 'user_profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    ),
  );
}
