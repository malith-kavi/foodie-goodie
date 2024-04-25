import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/alergies.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:first/widgets/check_box.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';
import 'login_screen.dart';

class Diseases extends StatefulWidget {
  final String docId;

  Diseases({super.key, required this.docId});

  @override
  State<Diseases> createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  List<String> diseases = [];

  @override
  void initState() {
    super.initState();
    final _firestore = FirebaseFirestore.instance;
    _firestore.collection('user_details').doc(widget.docId).get().then((doc) {
      if (doc.exists && doc.data() != null) {
        setState(() {
          diseases = List<String>.from(doc.data()!['Diseases'] ?? []);
        });
      }
    });
  }

  void toggleAlergy(String disease, bool isChecked) {
    setState(() {
      if (isChecked) {
        diseases.add(disease);
      } else {
        diseases.remove(disease);
      }
    });
  }

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
                builder: (context) => Alergies(docId: "null"),
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
              child: SingleChildScrollView(
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
                            'My Diseases and Symptoms',
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
                            isBlue: index == 0 ||
                                index == 1 ||
                                index == 2 ||
                                index == 3 ||
                                index == 4 ||
                                index == 5 ||
                                index == 6,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomCheckBox(
                              name: 'None',
                              isChecked: diseases.contains('None'),
                              onChanged: (isChecked) {
                                toggleAlergy('None', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              isChecked: diseases.contains('Diabetes'),
                              name: 'Diabetes',
                              onChanged: (isChecked) {
                                toggleAlergy('Diabetes', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              isChecked:
                                  diseases.contains('High Blood Pressure'),
                              name: 'High Blood Pressure ',
                              onChanged: (isChecked) {
                                toggleAlergy('High Blood Pressure', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Low Blood Pressure ',
                              isChecked:
                                  diseases.contains('Low Blood Pressure'),
                              onChanged: (isChecked) {
                                toggleAlergy('Low Blood Pressure', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Cholesterol',
                              isChecked: diseases.contains('Cholesterol'),
                              onChanged: (isChecked) {
                                toggleAlergy('Cholesterol', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Heart Attack ',
                              isChecked: diseases.contains('Heart Attack'),
                              onChanged: (isChecked) {
                                toggleAlergy('Heart Attack', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Arthritis',
                              isChecked: diseases.contains('Arthritis'),
                              onChanged: (isChecked) {
                                toggleAlergy('Arthritis', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/images/diseases.png',
                                  height: 160,
                                  width: 160,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    //const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(
                        text: 'Continue',
                        onPressed: () {
                          final _firestore = FirebaseFirestore.instance;
                          _firestore
                              .collection('user_details')
                              .doc(widget.docId)
                              .update({
                                "Diseases": diseases,
                              })
                              .then((result) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          })
                              .catchError((error) {
                                print("Error updating diseases: $error");
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
