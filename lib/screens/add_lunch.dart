import 'package:flutter/material.dart';

var forget = 'assets/images/Male.png';

class Addlunch extends StatelessWidget {
  const Addlunch({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  // Action to navigate back to the HOME screen
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 110,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center align the text
                children: [
                  Text(
                    'ADD YOUR LUNCH',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Enter your food',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 60),
              Image.asset(
                forget,
                width: 250,
                height: 175,
              ),
              const SizedBox(height: 120),
              // Add "Last Tracked" topic
              Text(
                'Last Tracked',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              // Add separation line
              Divider(),
              const SizedBox(height: 10),
              // Display previous searched items
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Previous Search 1'),
                      onTap: () {
                        // Handle tapping on previous search item
                      },
                    ),
                    ListTile(
                      title: Text('Previous Search 2'),
                      onTap: () {
                        // Handle tapping on previous search item
                      },
                    ),
                    // Add more ListTile widgets for additional previous searches
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
