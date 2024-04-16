import 'package:flutter/material.dart';
import 'package:first/screens/alergies.dart';

var forget = 'assets/images/Male.png';

class BlacklistPage extends StatelessWidget {
  const BlacklistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Blacklist',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Making the heading bold
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Action to navigate back to the HOME screen
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Action to navigate to the Add Blacklist Item page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Alergies()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildListItem('Item 1'),
                _buildListItem('Item 2'),
                // Add more ListTile widgets for additional blacklist items
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'My Food Allergies',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                _buildBulletListItem('Allergy 1'),
                _buildBulletListItem('Allergy 2'),
                // Add more ListTile widgets for additional allergies
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(230, 32, 186, 37), // Setting bottom app bar color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Action to navigate to the Home screen
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Action to perform search
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                // Action to navigate to the Profile screen
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.lightGreen.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        onTap: () {
          // Handle tapping on blacklist item or allergy item
        },
      ),
    );
  }

  Widget _buildBulletListItem(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.brightness_1, size: 10), // Bullet point
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
