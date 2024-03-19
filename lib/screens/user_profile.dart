import 'package:first/widgets/style_text.dart';
import 'package:first/widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      //appBar: PreferredSizeWidget(child: UserProfileAppBar()),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                  height: 100,
                ),
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
              const TextBox(labelText: 'Name', hintText: 'Name'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Age                                                                    ',
              ),
              const SizedBox(
                height: 5,
              ),
              const TextBox(labelText: 'Age', hintText: 'Age'),
              const SizedBox(
                height: 10,
              ),
              // const StyledText(
              //   'E-mail                                                                 ',
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // const TextBox(labelText: 'E-mail', hintText: 'E-mail'),
              // const SizedBox(
              //   height: 10,
              //),
              // const StyledText(
              //   'Birthday                                                               ',
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // const TextBox(labelText: 'Birthday', hintText: 'Birthday'),
              // const SizedBox(
              //   height: 10,
              // ),
              const StyledText(
                'Sex                                                                    ',
              ),
              const SizedBox(
                height: 5,
              ),
              const TextBox(labelText: 'Sex', hintText: 'Sex'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Height                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              const TextBox(labelText: 'Height', hintText: 'Height'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Weight                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              const TextBox(labelText: 'Weight', hintText: 'Weight'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Health Conditions                                              ',
              ),
              const SizedBox(
                height: 5,
              ),
              const TextBox(
                  labelText: 'Health Conditions',
                  hintText: 'Health Conditions'),
              const SizedBox(
                height: 10,
              ),
              CustomButton(text: 'Edit Profile', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
