import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/about_us.dart';
import 'package:first/screens/add_breakfast.dart';
import 'package:first/screens/add_dinner.dart';
//import 'package:first/screens/addlunch.dart';
import 'package:first/screens/contact.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/screens/settings.dart';
import 'package:first/screens/update.dart';
import 'package:first/screens/user_profile.dart';
import 'package:first/widgets/small_widgets.dart';
import 'package:flutter/material.dart';
import 'package:first/services/auth.dart';
import 'package:first/routes.dart';

class LunchHistory extends StatefulWidget {

  final String uid;
  const LunchHistory({required this.uid,});

  @override
  State<LunchHistory> createState() => _LunchHistoryState();
}

class _LunchHistoryState extends State<LunchHistory> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lunch Meal History           ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Expanded(
            flex: 1,
            child: Container(
              child: SearchBox(),

              // width: 240,
              // height: 300,
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            flex: 12,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color.fromARGB(255, 211, 236, 217),
              ),
              child: Center(
                child: FutureBuilder<DocumentSnapshot>(
                  future: FirebaseFirestore.instance.collection('user_details/'+widget.uid+'/mealPlan').doc('lunch').get(),
                  builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // Check the connection state
                      return Wrap(
                        children: [
                          Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircularProgressIndicator(
                                      color: Colors.black),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Loading data"), // Display a loading message
                                ],
                              )),
                        ],
                      );
                    }  else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else {
                      try{
                        List<dynamic> suggestions = snapshot.data!.get('selected_foods');
                        if(suggestions.isEmpty){
                          return Wrap(
                            children: [
                              Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center, // Display a message if no details are found
                                    children: [
                                      Text(
                                          'No details found'), // Display a message if no details are found
                                    ],
                                  )),
                            ],
                          );
                        }
                        return ListView.builder(
                          itemCount: suggestions.length,
                          itemBuilder: (context, index) {
                            return BreakfastListItem(suggestion: suggestions[index].toString(),img: suggestions[index].toString(),);
                          },
                        );
                      }catch(error){
                        return Wrap(
                          children: [
                            Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Display a message if no details are found
                                  children: [
                                    Text(
                                        'No details found'), // Display a message if no details are found
                                  ],
                                )),
                          ],
                        );
                      }
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BreakfastListItem extends StatelessWidget {
  final String suggestion;
  final String img;
  const BreakfastListItem({required this.suggestion,required this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  getImageAsset(img),
                  fit: BoxFit.cover,
                  height: 80,
                  width: 100,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(suggestion,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
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