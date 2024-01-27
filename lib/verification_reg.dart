import 'package:first/custom_button.dart';
import 'package:first/num_box.dart';
import 'package:first/s_button.dart';
import 'package:first/style_text.dart';
import 'package:flutter/material.dart';

var verification = 'assets/images/verification.png';

class VerificationFPW extends StatelessWidget {
  const VerificationFPW({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 30.0,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 80),
            ]),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(37, 0, 0, 0),
              ),
              Text(
                "Verification Code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(37, 0, 0, 0),
                ),
                StyledText(
                    'Enter the verification code that we \nare sent to your mobile phone')
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(37, 0, 0, 37),
                ),
                NumBox(),
                SizedBox(
                  width: 35,
                ),
                NumBox(),
                SizedBox(
                  width: 35,
                ),
                NumBox(),
                SizedBox(
                  width: 35,
                ),
                NumBox(),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const StyledText("Don't receive SMS?"),
                SButton(
                  text: 'Resend Code',
                  onPressed: () {},
                ),
              ],
            ),
            Image.asset(
              verification,
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 30),
            CustomButton(text: 'Register', onPressed: () {}),
          ]),
        ),
      ),
    );
  }
}
