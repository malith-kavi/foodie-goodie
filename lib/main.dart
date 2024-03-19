import 'package:first/screens/user_registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: UserRegistration(),
      ),
    ),
  );
}
