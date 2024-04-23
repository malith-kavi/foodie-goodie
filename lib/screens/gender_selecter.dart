import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/screens/profile_picture.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  final String docId;
  const GenderSelection({super.key, required this.docId});
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender;

  String maleUnselected = 'assets/images/Male.png';
  String maleSelected = 'assets/images/male_selected.png';

  String femaleUnselected = 'assets/images/Female.png';
  String femaleSelected = 'assets/images/female_selected.png';

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
                          'Which one are you?',
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
                          isBlue: index == 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      genderOption(
                        'Male',
                        selectedGender == 'Male'
                            ? maleSelected
                            : maleUnselected,
                      ),
                      SizedBox(width: 20),
                      genderOption(
                        'Female',
                        selectedGender == 'Female'
                            ? femaleSelected
                            : femaleUnselected,
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  StyledText('To give you a customize experience'),
                  StyledText('we need to know your gender'),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Allow',
                      onPressed: () {
                        final _firestore = FirebaseFirestore.instance;
                        _firestore
                            .collection('user_details')
                            .doc(widget.docId)
                            .update({
                              "Gender": selectedGender,
                            })
                            .then((result) {})
                            .catchError((onError) {
                              print("onError");
                            });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePictureSelection(
                                    docId: widget.docId,
                                  )),
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

  Widget genderOption(String gender, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            imagePath,
            width: 150,
            height: 150,
          ),
          onPressed: () {
            setState(() {
              selectedGender = gender;
            });
          },
        ),
        Text(
          gender,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
