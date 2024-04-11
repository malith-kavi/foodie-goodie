import 'package:flutter/material.dart';

var forget = 'assets/images/Male.png';

class Addbreakfast extends StatelessWidget {
  const Addbreakfast({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            // Action to navigate back to the HOME screen
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Action to add an item to My allergies
              // You can implement this functionality as needed
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Adjusted padding
                child: Row(
                  children: [
                    Text(
                      'Add Your Breakfast', // New heading
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Spacer(), // To push the text and the icon to the opposite sides
                    Icon(Icons.search),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Oval square shape
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none, // Remove the border
                    contentPadding: EdgeInsets.zero,
                  ),
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
                'Your Selected Items',
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
                      title: Text('List 1'),
                      onTap: () {
                        // Handle tapping on previous search item
                      },
                    ),
                    ListTile(
                      title: Text('List 2'),
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
