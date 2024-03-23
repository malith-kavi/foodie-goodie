import 'package:first/screens/dashboard.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

var gmail = 'assets/images/gmail.png';
var insta = 'assets/images/insta.png';
var whatsapp = 'assets/images/whatsapp.png';
var x = 'assets/images/x.jpg';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        title: const Center(
          child: Text(
            'Contact Us        ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
              IconButton(
                icon: Image.asset(
                  gmail,
                  height: 40.0,
                  width: 37.0,
                ),
                onPressed: () {},
              ),
              const StyledText(' foodigoodi@gmail.com'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
              IconButton(
                icon: Image.asset(
                  whatsapp,
                  height: 40.0,
                  width: 40.0,
                ),
                onPressed: () {},
              ),
              const StyledText(' foodigoodi@gmail.com'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              ),
              IconButton(
                icon: const Icon(Icons.facebook_rounded,
                    size: 50.0, color: Color.fromARGB(255, 2, 27, 254)),
                onPressed: () {},
              ),
              const StyledText('https://www.facebook.com/foodi_goodi'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
              IconButton(
                icon: Image.asset(
                  insta,
                  height: 40.0,
                  width: 40.0,
                ),
                onPressed: () {},
              ),
              const StyledText(' https://instagram.com/foodi_goodi'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
              IconButton(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    x,
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                onPressed: () {},
              ),
              const StyledText(' foodigoodi@twitter.com'),
            ],
          ),
        ]),
      ),
    );
  }
}
