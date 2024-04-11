import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios_new),
        //   onPressed: () {
        //     Navigator.pop(context); // Navigating back to the previous screen
        //   },
        // ),
        title: Text(
          '    Suggestions',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true, // Center align the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Breakfast',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 120, // Fixed height for the list
              child: ListView.builder(
                itemCount: 3, // Change the itemCount as needed
                itemBuilder: (context, index) {
                  // Example breakfast items
                  List<String> breakfastItems = [
                    'Milk Rice',
                    'String Hoppers',
                    'Rotti'
                  ];
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen.withOpacity(0.3),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(breakfastItems[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lunch',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 120, // Fixed height for the list
              child: ListView.builder(
                itemCount: 3, // Change the itemCount as needed
                itemBuilder: (context, index) {
                  // Example lunch items
                  List<String> lunchItems = ['Rice', 'Vegetable', 'Soup'];
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen.withOpacity(0.3),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(lunchItems[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Dinner',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 120, // Fixed height for the list
              child: ListView.builder(
                itemCount: 3, // Change the itemCount as needed
                itemBuilder: (context, index) {
                  // Example dinner items
                  List<String> dinnerItems = ['Bread', 'Noodles', 'Soup'];
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen.withOpacity(0.3),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(dinnerItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
