import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/about_us.dart';
import 'package:first/screens/add_breakfast.dart';
import 'package:first/screens/add_dinner.dart';
//import 'package:first/screens/addlunch.dart';
import 'package:first/screens/contact.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/screens/meal_breakfast_history.dart';
import 'package:first/screens/meal_dinner_history.dart';
import 'package:first/screens/settings.dart';
import 'package:first/screens/update.dart';
import 'package:first/screens/user_profile.dart';
import 'package:first/widgets/small_widgets.dart';
import 'package:flutter/material.dart';
import 'package:first/services/auth.dart';
import 'package:first/routes.dart';

class Adddinner extends StatefulWidget {
  final String uid;
  const Adddinner({required this.uid,});

  @override
  State<Adddinner> createState() => _AdddinnerState();
}

class _AdddinnerState extends State<Adddinner> {
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

  List<String> selectedFoodNames = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Add Your Dinner',
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
                  return CustomCard(name: foodNames[index],selectedFoodNames: selectedFoodNames,);
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
              child: Text('Add Dinner',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              onPressed: () {

                FirebaseFirestore.instance
                    .collection('user_details/'+widget.uid+'/mealPlan')
                    .doc('dinner') // Replace 'user_id_here' with actual user ID
                    .update({
                  'selected_foods': selectedFoodNames,
                  'timestamp': FieldValue.serverTimestamp(),
                })
                    .then((value) {
                  // Upload successful, navigate to BreakfastHistory
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DinnerHistory(uid: widget.uid)));
                })
                    .catchError((error) {
                  FirebaseFirestore.instance
                      .collection('user_details/'+widget.uid+'/mealPlan')
                      .doc('dinner') // Replace 'user_id_here' with actual user ID
                      .set({
                    'selected_foods': selectedFoodNames,
                    'timestamp': FieldValue.serverTimestamp(),
                  })
                      .then((value) {
                    // Upload successful, navigate to BreakfastHistory
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DinnerHistory(uid: widget.uid)));
                  })
                      .catchError((error) {
                    // Handle error
                    print("Failed to add breakfast: $error");
                  });
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 187, 24),
              )),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String name;
  final List<String> selectedFoodNames;

  const CustomCard({
    required this.name,
    required this.selectedFoodNames,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // Initial state of checkbox
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
                image: AssetImage(getImageAsset(widget.name)),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
                if (isChecked) {
                  widget.selectedFoodNames.add(widget.name);
                } else {
                  widget.selectedFoodNames.remove(widget.name);
                }
              });
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
