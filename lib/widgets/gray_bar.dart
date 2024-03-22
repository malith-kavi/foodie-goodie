import 'package:flutter/material.dart';

class GrayBar extends StatelessWidget {
  final bool isBlue;

  const GrayBar({required this.isBlue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.0,
      height: 5.0,
      decoration: BoxDecoration(
        color: isBlue
            ? const Color.fromARGB(255, 58, 71, 192)
            : const Color.fromARGB(75, 217, 217, 217),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
