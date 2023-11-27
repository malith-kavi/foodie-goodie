import 'package:flutter/material.dart';
import 'package:first/text_box.dart';
import 'package:first/custom_button.dart';

class UserRegistration extends StatelessWidget {
  const UserRegistration({super.key});

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
                 'Register',
                 style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                  ),
                 ),
                 ],
              ),
            const SizedBox(height: 20),
           
            
            //const SizedBox(height:),
             const TextBox(
              labelText: 'Phone Number', 
              hintText:'Enter your Phone Number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 15),
             const TextBox(
              labelText: 'User Name', 
              hintText:'Enter a User Name',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 15),
             const TextBox(
              labelText: 'Date Of Birth', 
              hintText:'Enter your Birthday',
              keyboardType: TextInputType.datetime,
            ),
            
            const SizedBox(height: 15),
            const TextBox(
              labelText: 'Create a Password', 
              hintText:'Enter your Password',
              obscureText: true,
            ),
            const SizedBox(height: 15),
            const TextBox(
              labelText: 'Re-enter the Password', 
              hintText:'Re-enter your Password',
              obscureText: true,
            ),
            //const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Image.asset(
              'assets/images/Prototyping.jpg',
              width: 250,
              height: 200,
              ),
              ],
            ),
           
            const SizedBox(height: 10),
            CustomButton(
              text: 'Register',
              onPressed: () {},
              ),
          ],
        ),
      ),
 );
  }
}
