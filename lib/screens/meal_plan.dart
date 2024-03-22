import 'package:first/screens/alergies.dart';
import 'package:first/screens/weight.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/select_button.dart';
import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  final String text;
  final Function(bool isSelected) onPressed;

  const SelectButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _SelectButtonState createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onPressed(isSelected);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(isSelected
            ? Color.fromARGB(255, 0, 187, 24)
            : Color.fromARGB(255, 200, 200, 200)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}

class MealPlan extends StatelessWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
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
                          'Let us know how we can help you',
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
                              index == 4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: SelectButton(
                      text: 'Weight loss',
                      onPressed: (isSelected) {},
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: SelectButton(
                      text: 'Track my nutrition',
                      onPressed: (isSelected) {},
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: SelectButton(
                      text: 'Improve overall fitness',
                      onPressed: (isSelected) {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/meal_plan.png',
                    width: 280,
                    height: 240,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Alergies()),
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
}
