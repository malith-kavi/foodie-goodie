import 'package:flutter/material.dart';

class GUTextBox extends StatelessWidget {
  final String labelText;

  final TextInputType keyboardType;
  final bool obscureText;
  final double width;
  final double height;

  const GUTextBox(
      {required this.labelText,
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
        enabled: false,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 217, 249, 221),
          labelText: labelText,
          labelStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
