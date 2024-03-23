import 'package:flutter/material.dart';

class GTextBox extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final double width;
  final double height;

  const GTextBox(
      {required this.labelText,
      required this.hintText,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.width = 320.0,
      this.height = 35.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 217, 249, 221),
          labelText: labelText,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
