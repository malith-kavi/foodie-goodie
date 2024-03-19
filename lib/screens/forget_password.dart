import 'package:first/custom_button.dart';
import 'package:first/style_text.dart';
import 'package:first/text_box.dart';
import 'package:flutter/material.dart';

var forget = 'assets/images/forget_password.png';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
            const SizedBox(height: 50),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              Icon(
                Icons.arrow_back_ios_new,
                size: 30.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 110,
              )
            ]),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(37, 0, 0, 0),
                ),
                Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(37, 0, 0, 0),
                ),
                StyledText(
                    'Enter your registered phone number \n and we’ll send a code to login again'),
              ],
            ),
            const SizedBox(height: 30),
            const TextBox(
              labelText: 'Phone Number',
              hintText: 'Enter your Phone Number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 60),
            Image.asset(
              forget,
              width: 300,
              height: 200,
            ),
            const SizedBox(height: 120),
            CustomButton(
              text: 'Reset Password',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
