import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumBox extends StatelessWidget {
  const NumBox({super.key});

  @override
  Widget build(context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffd9d9d9)),
    );
  }
}
