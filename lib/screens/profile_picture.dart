import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/style_text.dart';
import 'package:first/widgets/white_button.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

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
            const SizedBox(height: 90),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                7,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GrayBar(
                    isBlue: index == 0 || index == 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            const SizedBox(height: 50),
            const StyledText('Select a given profile picture'),
            const StyledText('Or add your own photo'),
            const SizedBox(height: 140),
            WhiteButton(text: 'Add Custom Photo', onPressed: () {}),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Continue',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}