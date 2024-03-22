import 'package:flutter/material.dart';

var logo = 'assets/images/foodiegoodie.png';
var loading = 'assets/images/loading-background.jpg';
var google = 'assets/images/google.png';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(loading), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Positioned(
                  top: 150,
                  child: Image.asset(
                    logo,
                    width: 250,
                    height: 250,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
