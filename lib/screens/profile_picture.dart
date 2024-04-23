import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

class ProfilePictureSelection extends StatefulWidget {
  final String docId;
  const ProfilePictureSelection({super.key, required this.docId});
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

  List<String> profilePic = [
    "https://firebasestorage.googleapis.com/v0/b/foodiegoodie-22262.appspot.com/o/Profile_Pic%2FsProfile3.png?alt=media&token=1203230a-afa9-41fc-b0fb-01afddb71079",
    "https://firebasestorage.googleapis.com/v0/b/foodiegoodie-22262.appspot.com/o/Profile_Pic%2FunProfile1.png?alt=media&token=ab86ccdf-bf51-4656-8cc8-843901d99c2a",
    "https://firebasestorage.googleapis.com/v0/b/foodiegoodie-22262.appspot.com/o/Profile_Pic%2FunProfile2.png?alt=media&token=f5e48c8e-2101-49a9-a8a5-9cb2b89bb161"
  ];

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
                builder: (context) => const Notifications(
                  docId: "null",
                ),
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
                          MaterialPageRoute(
                              builder: (context) =>
                                  Height(docId: widget.docId)),
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
            final _firestore = FirebaseFirestore.instance;
            setState(() {
              selectedImage = profileName;
            });
            int index = 1;
            switch (selectedImage) {
              case "Profile 1":
                index = 1;
                break;
              case "Profile 2":
                index = 2;
                break;
              case "Profile 3":
                index = 0;
                break;
            }
            _firestore
                .collection('user_details')
                .doc(widget.docId)
                .update({
                  "Profic": profilePic[index],
                })
                .then((result) {})
                .catchError((onError) {
                  print("onError");
                });
          },
        ),
      ],
    );
  }
}
