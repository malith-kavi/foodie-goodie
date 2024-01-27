import 'package:first/s_button.dart';
import 'package:flutter/material.dart';
import 'package:first/style_text.dart';
import 'package:first/loading_screen.dart';
import 'package:first/text_box.dart';
import 'package:first/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              logo,
              width: 250,
              height: 250,
            ),
            const StyledText('Enter Your Phone Number & password to Log in'),
            const SizedBox(height: 40),
            const TextBox(
              labelText: 'Phone Number',
              hintText: 'Enter your Phone Number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            const TextBox(
              labelText: 'Password',
              hintText: 'Enter your Password',
              obscureText: true,
            ),
            SButton(
              text: 'Forgot Password',
              onPressed: () {},
            ),
            const StyledText('Or login with'),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                icon: const Icon(Icons.facebook_rounded,
                    size: 30.0, color: Color.fromARGB(255, 2, 27, 254)),
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: Image.asset(
                  google,
                  height: 30,
                  width: 30,
                ),
                onPressed: () {},
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const StyledText('Do not have an account ?'),
                SButton(
                  text: 'Register Now',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Login',
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
