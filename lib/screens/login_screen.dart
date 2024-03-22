import 'package:first/screens/forget_password.dart';
import 'package:first/screens/user_registration.dart';
import 'package:first/widgets/s_button.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/style_text.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/widgets/text_box.dart';
import 'package:first/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      logo,
                      width: 250,
                      height: 250,
                    ),
                    const StyledText(
                        'Enter Your Phone Number & password to Log in'),
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
                    Row(
                      children: [
                        SButton(
                          text: 'Forgot Password',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgetPassword(),
                              ),
                            );
                          },
                        ),
                      ],
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserRegistration(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(
                        text: 'Login',
                        onPressed: () {},
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
