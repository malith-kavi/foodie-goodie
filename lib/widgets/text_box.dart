import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final double width;
  final double height;

  const TextBox(
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
          fillColor: const Color.fromARGB(255, 217, 217, 217),
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

const textInputDecoration = InputDecoration(
  hintText: "Email",
  hintStyle: TextStyle(color: Colors.black, fontSize: 15),
  fillColor: Color.fromARGB(255, 217, 217, 217),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 217, 217, 217)),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 187, 24)),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  ),
);
