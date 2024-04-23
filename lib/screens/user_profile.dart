import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/widgets/g_text_box.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List<String> userDetails = [];

  @override
  void initState() {
    // TODO: implement initState
    displayData();
    //super.initState();
  }

  void displayData() async {
    await fetchUsersAndRedirectSellerInterface("SReVL6SDUMYb5C20LgH70kcHRRs2");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios_new),
        //     onPressed: () {
        //       Navigator.pop(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => Dash(),
        //         ),
        //       );
        //     }),
        title: const Center(
          child: Text(
            '               Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 216, 18, 4),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {},
              child: const Text('Update')),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      userDetails[0],
                      width: 110,
                      height: 110,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Name                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              GTextBox(labelText: userDetails[1], hintText: 'Name'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                '     Birth Day                                                                   ',
              ),
              const SizedBox(
                height: 5,
              ),
              GTextBox(labelText: userDetails[2], hintText: 'Age'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Height                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              GTextBox(labelText: userDetails[3], hintText: 'Height'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Weight                                                                 ',
              ),
              const SizedBox(
                height: 5,
              ),
              GTextBox(labelText: userDetails[4], hintText: 'Weight'),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Health Conditions                                              ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GTextBox(
                  labelText: 'Health Conditions is good',
                  hintText: 'Health Conditions'),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
              // Padding(
              //   padding: const EdgeInsets.all(30.0),
              //   child: CustomButton(
              //     text: 'Update',
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future fetchUsersAndRedirectSellerInterface(String docID) async {
    try {
      var user =
          FirebaseFirestore.instance.collection('user_details').doc(docID);
      user.get().then((value) {
        String pic = value['Profic'].toString();
        userDetails.add(pic);
        String name = value['UserName'].toString();
        userDetails.add(name);
        String birthday = value['BirthDay'].toString();
        userDetails.add(birthday);
        String height = value['Height'].toString();
        userDetails.add(height);
        String weight = value['Weight'].toString();
        userDetails.add(weight);
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
