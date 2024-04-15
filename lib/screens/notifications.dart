import 'package:first/screens/gender_selecter.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:permission_handler/permission_handler.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
                    builder: (context) => GenderSelection(),
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
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomButton(
                      text: 'Allow',
                      onPressed: () async {
                        if (await Permission.notification.request().isGranted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GenderSelection()),
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