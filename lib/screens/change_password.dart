import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/text_box.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigator.pop(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const LoadingScreen(),
            //   ),
            // );
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const TextBox(
                    labelText: 'Enter Password',
                    hintText: 'Enter your New Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  const TextBox(
                    labelText: 'Re-enter Password',
                    hintText: 'Re-enter your Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    'assets/images/reset_password.jpg',
                    width: 450,
                    height: 300,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Reset Password',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
