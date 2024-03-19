import 'package:first/screens/gender_selecter.dart';
import 'package:flutter/material.dart';
import 'package:first/custom_button.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 90),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              Icon(
                Icons.arrow_back_ios_new,
                size: 30.0,
                color: Colors.black,
              ),
              SizedBox(width: 290),
              Text(
                'Skip',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 187, 24),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ]),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'Do you want to turn\n   on notification?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 130),
            Image.asset(
              'assets/images/Push_notifications.png',
              width: 360,
              height: 200,
            ),
            const SizedBox(height: 160),
            CustomButton(
              text: 'Allow',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GenderSelection()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
