import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
