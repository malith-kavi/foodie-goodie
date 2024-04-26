import 'package:first/screens/home_page.dart';
import 'package:first/screens/meal_breakfast_history.dart';

import 'package:first/widgets/small_widgets.dart';
import 'package:flutter/material.dart';

class Addbreakfast extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> foodNames = [
    "Avocado",
    "BrownRice",
    "Banana",
    "ChickPeas",
    "Chocolate",
    "Dhal",
    "FattyFish",
    "Fruits",
    "FruitSalads",
    // Add more food names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigator.pop(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => HomePage(),
            //   ),
            // );
          },
        ),
        title: Text(
          'Add Your Breakfast',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          SearchBox(),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color.fromARGB(255, 211, 236, 217),
              ),
              child: ListView.builder(
                itemCount: foodNames.length,
                itemBuilder: (context, index) {
                  return CustomCard(name: foodNames[index]);
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: ElevatedButton(
              child: Text('Add Breakfast',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BreakfastHistory()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 187, 24),
              )),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;

  const CustomCard({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    bool isChecked = false; // Initial state of checkbox

    return Card(
      elevation: 2,
      margin: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(getImageAsset(name)),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              // Update the state of isChecked when the checkbox is toggled
              isChecked = value!;
            },
          ),
        ],
      ),
    );
  }
}

String getImageAsset(String name) {
  switch (name) {
    case "Avocado":
      return 'assets/images/avocado.png';
    case "BrownRice":
      return 'assets/images/brownRice.png';
    case "Banana":
      return 'assets/images/banana.png';
    case "ChickPeas":
      return 'assets/images/chickPeas.png';
    case "Chocolate":
      return 'assets/images/chocolate.png';
    case "Dhal":
      return 'assets/images/dhal.png';
    case "FattyFish":
      return 'assets/images/fattyFish.png';
    case "Fruits":
      return 'assets/images/fruits.png';
    case "FruitSalads":
      return 'assets/images/fruitSalads.png';
    case "GingerTea":
      return 'assets/images/gingerTea.png';
    case "Grains":
      return 'assets/images/grains.png';
    case "LaefyGreens":
      return 'assets/images/laefyGreens.png';
    case "Nuts":
      return 'assets/images/nuts.png';
    case "Oats":
      return 'assets/images/oats.png';
    case "Olives":
      return 'assets/images/olives.png';
    case "Papaya":
      return 'assets/images/papaya.png';
    case "Sambol":
      return 'assets/images/sambol.png';
    case "Tomato":
      return 'assets/images/tomato.png';
    case "Tofu":
      return 'assets/images/tofu.png';
    case "Vegetables":
      return 'assets/images/vegetables.png';
    case "VegetableSoup":
      return 'assets/images/vegetablesSoup.png';
    case "WheatRoti":
      return 'assets/images/wheatRoti.png';
    case "Youghurt2":
      return 'assets/images/youghurt2.png';
    default:
      return 'assets/images/youghurt.png';
  }
}
