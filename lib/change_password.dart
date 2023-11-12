import 'package:first/custom_button.dart';
//import 'package:first/style_text.dart';
import 'package:first/text_box.dart';
import 'package:flutter/material.dart';


class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                ),
                Icon(Icons.arrow_back_ios_new,
                size: 30.0,
                color: Colors.black,
                ),
                SizedBox(height: 110,)
              ]
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(37, 0, 0, 0),
                ),
                 Text(
                 'Change Password',
                 style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                  ),
                 ),
                 ],
              ),
            const SizedBox(height: 10),
           
            
            const SizedBox(height: 30),
            const TextBox(
              labelText: 'Enter Password', 
              hintText:'Enter your New Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            const TextBox(
              labelText: 'Re-enter Password', 
              hintText:'Re-enter your Password',
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/reset_password.jpg',
              width: 450,
              height: 300,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Change Password',
              onPressed: () {},
              ),
          ],
        ),
      ),
 );
  }
}
