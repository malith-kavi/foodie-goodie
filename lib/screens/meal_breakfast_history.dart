import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/widgets/small_widgets.dart';
import 'package:flutter/material.dart';

class BreakfastHistory extends StatefulWidget {
  const BreakfastHistory({super.key});

  @override
  State<BreakfastHistory> createState() => _BreakfastHistoryState();
}

//SReVL6SDUMYb5C20LgH70kcHRRs2
class _BreakfastHistoryState extends State<BreakfastHistory> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> foodName = [];
  List<String> foodImage = [];

  @override
  void initState() {
    super.initState();
  }

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
            //     // builder: (context) => HomePage(responseObject: ,),
            //   ),
            // );
          },
        ),
        title: const Center(
          child: Text(
            'Breakfast Meal History           ',
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
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: foodName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
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
                              child: Image.network(
                                foodImage[index],
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  const SizedBox(height: 30),
                                  Text(
                                    foodName[index],
                                    style: const TextStyle(
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
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getDataFromSubcollection(String uid) async {
    // Get a reference to the collection
    CollectionReference mainCollection =
        FirebaseFirestore.instance.collection('user_selection');

    // Get a reference to the document
    DocumentReference docRef = mainCollection.doc(uid);

    // Get a reference to the subcollection
    CollectionReference subCollection = docRef.collection('/Breakfast');

    // Get the documents from the subcollection
    QuerySnapshot subCollectionSnapshot = await subCollection.get();

    // Iterate through the documents and retrieve data
    subCollectionSnapshot.docs.forEach((DocumentSnapshot document) {
      // Access the data of each document
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      // You can now use the data retrieved as needed
      foodName.add(data['foodName']);
      foodImage.add(data['foodImage']);
    });
  }
}
