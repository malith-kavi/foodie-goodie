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

class Adddinner extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
        title: const Center(
          child: Text(
            'Add Your Dinner           ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
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
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: <Widget>[
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/avocado.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Avocado',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/brownRice.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Brown Rice',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/banana.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Banana',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/chickPeas.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Chick Peas',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/chocolate.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Chocolate',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/dhal.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Dhal',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/fattyFish.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Fatty Fish',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/fruits.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Fruits',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/fruitSalads.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Fruit Salads',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/gingerTea.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Ginger Tea',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/grains.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Grains',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/laefyGreens.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Laefy Green',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/nuts.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Nuts',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/oats.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Oats',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/olives.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Olives',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/papaya.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Papaya',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/sambol.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Sambol',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/tomato.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Tomato',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/tofu.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Tofu',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/vegetables.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Vegetables',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/vegetableSoup.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Vegetable Soup',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/wheatRoti.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Wheat Roti',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/youghurt 2.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Youghurt',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Addbreakfast()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/youghurt.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    'Youghurt Non-fat',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
