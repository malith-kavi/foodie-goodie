import 'package:first/screens/alergies.dart';
import 'package:first/widgets/check_box.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';

class Diseases extends StatelessWidget {
  const Diseases({super.key});

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
                builder: (context) => Alergies(),
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
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        CustomCheckBox(
                          name: 'None',
                          onChanged: (isChecked) {
                            // print('Checkbox checked: $isChecked');
                          },
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'Diabetes',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'High Blood Pressure ',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'Low Blood Pressure ',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'Cholesterol',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'Heart Attack ',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        CustomCheckBox(
                          name: 'Arthritis',
                          onChanged: (isChecked) {},
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/diseases.png',
                              height: 250,
                              width: 250,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ()),
                        // );
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
}
