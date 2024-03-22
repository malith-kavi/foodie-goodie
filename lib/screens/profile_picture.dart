import 'package:first/screens/height.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

class ProfilePictureSelection extends StatefulWidget {
  @override
  _ProfilePictureSelectionState createState() =>
      _ProfilePictureSelectionState();
}

class _ProfilePictureSelectionState extends State<ProfilePictureSelection> {
  String? selectedImage;

  String unselectedProfile1 = 'assets/images/unProfile1.png';
  String unselectedProfile2 = 'assets/images/unProfile2.png';
  String unselectedProfile3 = 'assets/images/unProfile3.png';

  String selectedProfile1 = 'assets/images/sProfile1.png';
  String selectedProfile2 = 'assets/images/sProfile2.png';
  String selectedProfile3 = 'assets/images/sProfile3.png';

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
                builder: (context) => Notifications(),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
                      ),
                      Center(
                        child: Text(
                          'Profile Picture',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
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
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      profileOption(
                        'Profile 1',
                        selectedImage == 'Profile 1'
                            ? selectedProfile1
                            : unselectedProfile1,
                      ),
                      //SizedBox(width: 10),
                      profileOption(
                        'Profile 2',
                        selectedImage == 'Profile 2'
                            ? selectedProfile2
                            : unselectedProfile2,
                      ),
                      //SizedBox(width: 10),
                      profileOption(
                        'Profile 3',
                        selectedImage == 'Profile 3'
                            ? selectedProfile3
                            : unselectedProfile3,
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  StyledText('Select a profile picture'),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Height()),
                        );
                      },
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

  Widget profileOption(String profileName, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            imagePath,
            width: 90,
            height: 90,
          ),
          onPressed: () {
            setState(() {
              selectedImage = profileName;
            });
          },
        ),
      ],
    );
  }
}
