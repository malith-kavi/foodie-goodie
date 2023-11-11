import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
    const GradientContainer({super.key});
  
    @override
    Widget build(context) {
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient( 
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 28,
            ),
          ),
        ),
      );
    }
  }
  