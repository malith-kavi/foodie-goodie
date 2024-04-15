import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginScreen(),
    'home': (context) => HomePage(),
  };
}
