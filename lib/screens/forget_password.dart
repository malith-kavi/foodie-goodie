import 'package:first/screens/loading_screen.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/style_text.dart';
import 'package:first/widgets/text_box.dart';
import 'package:flutter/material.dart';

var forget = 'assets/images/forget_password.png';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const LoadingScreen(),
              ),
            );
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
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      ),
                      StyledText(
                          'Enter your registered phone number \nand we’ll send a code to login again'),
                    ],
                  ),
                  const SizedBox(height: 50),
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
