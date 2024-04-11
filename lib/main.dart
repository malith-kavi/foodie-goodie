import 'package:first/screens/alergies.dart';
import 'package:first/screens/change_password.dart';
import 'package:first/screens/forget_password.dart';
import 'package:first/screens/gender_selecter.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/screens/profile_picture.dart';
import 'package:first/screens/user_profile.dart';
import 'package:first/screens/user_registration.dart';
import 'package:first/screens/verification_fpw.dart';
import 'package:first/screens/verification_reg.dart';
import 'package:first/screens/weight.dart';
import 'package:first/screens/wrapper.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:first/screens/blacklist.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/login_screen.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper();
  }
}







  // runApp(
  //   MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: LoginScreen(),
  //     ),
  //   ),
  // );