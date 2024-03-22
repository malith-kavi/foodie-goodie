import 'package:first/screens/alergies.dart';
import 'package:first/screens/change_password.dart';
import 'package:first/screens/forget_password.dart';
import 'package:first/screens/gender_selecter.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/screens/profile_picture.dart';
import 'package:first/screens/user_registration.dart';
import 'package:first/screens/verification_fpw.dart';
import 'package:first/screens/verification_reg.dart';
import 'package:first/screens/weight.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Alergies(),
      ),
    ),
  );
}
