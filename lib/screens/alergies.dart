import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/check/check.dart';
import 'package:first/screens/meal_plan.dart';
import 'package:first/widgets/check_box.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/screens/diseases.dart';

class Alergies extends StatefulWidget {
  final String docId;

  Alergies({super.key, required this.docId});

  @override
  State<Alergies> createState() => _AlergiesState();
}

class _AlergiesState extends State<Alergies> {
  List<String> alergies = [];

  @override
  void initState() {
    super.initState();
    final _firestore = FirebaseFirestore.instance;
    _firestore.collection('user_details').doc(widget.docId).get().then((doc) {
      if (doc.exists && doc.data() != null) {
        setState(() {
          alergies = List<String>.from(doc.data()!['Allergies'] ?? []);
        });
      }
    });
  }

  void toggleAlergy(String alergy, bool isChecked) {
    setState(() {
      if (isChecked) {
        alergies.add(alergy);
      } else {
        alergies.remove(alergy);
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
                builder: (context) => MealPlan(docId: "null"),
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
                            'My Food Alergies',
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
                                index == 5,
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
                              isChecked: alergies.contains('None'),
                              onChanged: (isChecked) {
                                toggleAlergy('None', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Cereals containing gluten',
                              isChecked: alergies
                                  .contains('Cereals containing gluten'),
                              onChanged: (isChecked) {
                                toggleAlergy(
                                    'Cereals containing gluten', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Eggs',
                              isChecked: alergies.contains('Eggs'),
                              onChanged: (isChecked) {
                                toggleAlergy('Eggs', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Fish',
                              isChecked: alergies.contains('Fish'),
                              onChanged: (isChecked) {
                                toggleAlergy('Fish', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Milk',
                              isChecked: alergies.contains('Milk'),
                              onChanged: (isChecked) {
                                toggleAlergy('Milk', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              name: 'Soy',
                              isChecked: alergies.contains('Soy'),
                              onChanged: (isChecked) {
                                toggleAlergy('Soy', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              isChecked: alergies.contains('Nuts'),
                              name: 'Nuts',
                              onChanged: (isChecked) {
                                toggleAlergy('Nuts', isChecked);
                              },
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/images/alergies.png',
                                  height: 280,
                                  width: 180,
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
                                "Allergies": alergies,
                              })
                              .then((result) {})
                              .catchError((error) {
                                print("Error updating alergies: $error");
                              });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Diseases(
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
      ),
    );
  }
}
