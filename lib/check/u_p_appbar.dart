import 'package:flutter/material.dart';

class UserProfileAppBar extends StatelessWidget {
  const UserProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new), onPressed: () {}),
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
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(300),
        //   child: BottomAppBar(
        //     child: Padding(
        //       padding: const EdgeInsets.all(8),
        //       child: OverflowBar(
        //         overflowAlignment: OverflowBarAlignment.center,
        //         alignment: MainAxisAlignment.center,
        //         overflowSpacing: 5.0,
        //         children: <Widget>[
        //           CustomButton(text: 'Edit Profile', onPressed: () {}),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
