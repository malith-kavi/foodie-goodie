import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/models/UserModel.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return LoginScreen();
    } else {
      return HomePage();
    }
  }
}
