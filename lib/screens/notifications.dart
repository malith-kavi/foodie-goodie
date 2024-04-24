import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/screens/gender_selecter.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:permission_handler/permission_handler.dart';

class Notifications extends StatelessWidget {
  final String docId;
  const Notifications({super.key, required this.docId});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 187, 24),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenderSelection(docId: docId),
                  ),
                );
              },
              child: const Text('Skip')),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
                      ),
                      Center(
                        child: Text(
                          'Do you want to turn\n   on notification?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 130),
                  Image.asset(
                    'assets/images/Push_notifications.png',
                    width: 360,
                    height: 200,
                  ),
                  //const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Allow',
                      onPressed: () async {
                        if (docId.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Invalid document ID'),
                            ),
                          );
                          return;
                        }

                        final status = await Permission.notification.request();
                        if (status.isGranted) {
                          final _firestore = FirebaseFirestore.instance;
                          try {
                            await _firestore
                                .collection('user_details')
                                .doc(docId)
                                .update({
                              'Notification': 'Allow',
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    GenderSelection(docId: docId),
                              ),
                            );
                          } catch (error) {
                            // Handle Firestore update error
                            print('Error updating firestore: $error');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Failed to update notification settings'),
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Permission denieded'),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//Padding(
//                     padding: const EdgeInsets.all(30.0),
//                     child: CustomButton(
//                         text: 'Allow',
//                         onPressed: () async {
//                           var status = await Permission.notification.request();
//                           if (status.isGranted) {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => GenderSelection(),
//                               ),
//                             );
//                           } else {
//                             showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return AlertDialog(
//                                     title: Text('Permission Denied'),
//                                     content:
//                                         Text('You have denied the permission'),
//                                     actions: [
//                                       TextButton(
//                                         onPressed: () {
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: Text('Ok'),
//                                       ),
//                                     ],
//                                   );
//                                 });
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => GenderSelection()),
//                             );
//                           }
//                         }),
//                   ),
//                 ],
//               ),
//             ),