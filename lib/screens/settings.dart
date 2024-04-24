import 'package:first/screens/about_us.dart';
import 'package:first/screens/contact.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Notifications'),
            trailing: Switch(
              value: true, // Replace with actual value from settings
              onChanged: (newValue) {
                // Implement functionality to toggle notifications
              },
            ),
          ),
          ListTile(
            title: Text('Change Language'),
            onTap: () {
              // Implement functionality to change language
            },
          ),
          ListTile(
            title: Text('Check for Updates'),
            trailing: Switch(
              value: true, // Replace with actual value from settings
              onChanged: (newValue) {
                // Implement functionality to toggle update check
              },
            ),
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              );
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
          ),
          // Add more settings options as needed
        ],
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              'Healthy Food is an easy-to-use \napplication about eating healthy.',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'You will find information about\nthings that you should have in \nmind when trying to eat and stay\nhealthy.',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Add social media icons or other information as needed
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact information goes here...',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            // Add contact information widgets as needed
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
