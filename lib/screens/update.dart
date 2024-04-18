import 'package:first/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';

class Update extends StatelessWidget {
  const Update({super.key});

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
                builder: (context) => Dash(),
              ),
            );
          },
        ),
        title: const Center(
          child: Text(
            'Check For Update           ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 90),
          Image.asset(
            'assets/images/update.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 60),
          const Text(
            'Application is up to date',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'check again later',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomButton(
              text: 'Check For Updates',
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
