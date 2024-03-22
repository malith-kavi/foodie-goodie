import 'package:first/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/text_box.dart';
import 'package:first/widgets/custom_button.dart';

class UserRegistration extends StatelessWidget {
  const UserRegistration({super.key});

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
                        'Register',
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
                    labelText: 'Phone Number',
                    hintText: 'Enter your Phone Number',
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 15),
                  const TextBox(
                    labelText: 'User Name',
                    hintText: 'Enter a User Name',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 15),
                  const TextBox(
                    labelText: 'Date Of Birth',
                    hintText: 'Enter your Birthday',
                    keyboardType: TextInputType.datetime,
                  ),
                  const SizedBox(height: 15),
                  const TextBox(
                    labelText: 'Create a Password',
                    hintText: 'Enter your Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 15),
                  const TextBox(
                    labelText: 'Re-enter the Password',
                    hintText: 'Re-enter your Password',
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/Prototyping.jpg',
                        width: 220,
                        height: 160,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Register',
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
