import 'package:first/screens/contact.dart';
import 'package:first/screens/dashboard.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        title: const Center(
          child: Text(
            'About Us           ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 50),
          const Text(
            'Healthy Food is an easy-to-use \napplication about eating healthy.',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'You will find information about\nthings that you should have in \nmind when trying to eat and stay\nhealthy.',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook_rounded,
                        size: 50.0, color: Color.fromARGB(255, 2, 27, 254)),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 25),
                  IconButton(
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        x,
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 30),
                  IconButton(
                    icon: Image.asset(
                      insta,
                      height: 40.0,
                      width: 40.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
