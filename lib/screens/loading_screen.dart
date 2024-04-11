import 'package:first/screens/login_screen.dart';
import 'package:flutter/material.dart';

var logo = 'assets/images/foodiegoodie.png';
var loading = 'assets/images/loading-background.jpg';
var google = 'assets/images/google.png';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToNextPage() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }

    Future.delayed(Duration(seconds: 2), navigateToNextPage);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(loading), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  logo,
                  width: 250,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
