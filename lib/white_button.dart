import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;


  const WhiteButton(
      {required this.text,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      height: 50.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor:const  Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 187, 24),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
