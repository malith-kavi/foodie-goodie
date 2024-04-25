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
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first/services/auth.dart';
import 'package:first/routes.dart';
import 'package:flutter/widgets.dart';

class Suggestbreakfast extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        title: const Center(
          child: Text(
            'Breakfast Suggestions           ',
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
                  future: FirebaseFirestore.instance.collection('sugestions').doc('breakfast').get(),
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
                        List<dynamic> suggestions = snapshot.data!.get('Heart Attack');
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
                            return BreakfastListItem(suggestion: suggestions[index]['name'].toString(),img: suggestions[index]['img'].toString(),);
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
                child: Image.network(
                  img,
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
