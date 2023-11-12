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
      decoration:const BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox ( height: 80,),
            Image.asset(
              logo,
              width: 250,
              height: 250,
            ),
            const StyledText('Enter Your Phone Number & password to Log in'),
            const SizedBox(height:20),
            const TextBox(
              labelText: 'Phone Number',
              hintText: 'Enter your Phone Number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height:20),
            const TextBox(
              labelText: 'Password',
              hintText: 'Enter your Password',
              obscureText: true,
              ),
            const SizedBox(height: 20),
            const Text(
              'Forgot Password                                                    ',
              style:TextStyle(
                color: Color.fromARGB(255, 0, 187, 24),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            const StyledText('Or login with'),
            const SizedBox(height: 10),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Icon(Icons.facebook_rounded,
                size:30.0,
                color: Color.fromARGB(255, 2, 27, 254)),
                const SizedBox(width: 10),
                Image.asset(
                  google,
                  height: 30,
                  width: 30,
                  ),
              ]
            ),
            const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledText('Do not have an account ?'),
                  SizedBox(width: 10),
                  Text(
                    'Register now',
                    style:TextStyle(
                    color: Color.fromARGB(255, 0, 187, 24),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
              ),
            ),
                ],
              ),
            const SizedBox(height: 80),
            CustomButton(
              text: 'Login',
              onPressed: () {},
              ),   
          ]),
      ),
      
    );
  }
}
