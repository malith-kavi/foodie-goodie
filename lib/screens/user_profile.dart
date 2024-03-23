import 'package:first/check/u_p_appbar.dart';
import 'package:first/screens/dashboard.dart';
import 'package:first/widgets/g_text_box.dart';
import 'package:first/widgets/style_text.dart';
import 'package:first/widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            }),
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 216, 18, 4),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {},
              child: const Text('Sign Out')),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      'assets/images/profilepic.png',
                      width: 110,
                      height: 110,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Name                                                                   ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(labelText: 'Name', hintText: 'Name'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Age                                                                    ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(labelText: 'Age', hintText: 'Age'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Height                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(labelText: 'Height', hintText: 'Height'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Weight                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(labelText: 'Weight', hintText: 'Weight'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Health Conditions                                              ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(
                  labelText: 'Health Conditions',
                  hintText: 'Health Conditions'),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomButton(
                  text: 'Update',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
