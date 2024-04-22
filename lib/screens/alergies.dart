import 'package:first/screens/meal_plan.dart';
import 'package:first/widgets/check_box.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/screens/diseases.dart';

class Alergies extends StatelessWidget {
  const Alergies({super.key});

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
                builder: (context) => MealPlan(),
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
                    const SizedBox(height: 20),
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
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Cereals containing gluten',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          // CustomCheckBox(
                          //   name: 'Crustaceans',
                          //   onChanged: (isChecked) {},
                          // ),
                          // SizedBox(height: 12),
                          CustomCheckBox(
                            name: 'Eggs',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Fishes',
                            onChanged: (isChecked) {},
                          ),
                          // SizedBox(height: 12),
                          // CustomCheckBox(
                          //   name: 'Groundnut',
                          //   onChanged: (isChecked) {},
                          // ),
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Milk',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Soy',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Nuts',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          CustomCheckBox(
                            name: 'Milk',
                            onChanged: (isChecked) {},
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/alergies.png',
                                height: 180,
                                width: 200,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(
                        text: 'Continue',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diseases()),
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
