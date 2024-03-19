import 'package:first/gray_bar.dart';
import 'package:first/weight_button.dart';
import 'package:flutter/material.dart';
import 'package:first/custom_button.dart';

var weight = 'assets/images/weight.png';

class Weight extends StatelessWidget {
  const Weight({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 60),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ]),
            const SizedBox(height: 20),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 20),
              Text(
                'Enter Your Weight',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ]),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                7,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GrayBar(
                    isBlue:
                        index == 0 || index == 1 || index == 2 || index == 3,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              weight,
              width: 300,
              height: 250,
            ),
            const WeightButton(),
            const SizedBox(height: 140),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Continue',
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
