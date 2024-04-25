import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/models/UserModel.dart';
import 'package:first/widgets/g_text_box.dart';
import 'package:first/widgets/gu_text_box.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  final GetUserDetails responseObject;
  const UserProfile({super.key, required this.responseObject});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: //IconButton(
        // icon: const Icon(Icons.arrow_back_ios_new),
        // onPressed: () {
        // Navigator.pop(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Dash(),
        //   ),
        // );
        //}),
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // actions: <Widget>[
        //   TextButton(
        //       style: TextButton.styleFrom(
        //         textStyle: const TextStyle(
        //           fontSize: 15,
        //           color: Color.fromARGB(255, 216, 18, 4),
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //       onPressed: () {},
        //       child: const Text('Update')),
        // ],
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
                      widget.responseObject.profilePicture,
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
              GUTextBox(
                labelText: widget.responseObject.userName,
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                '     Birth Day                                                                ',
              ),
              const SizedBox(
                height: 5,
              ),
              GUTextBox(
                labelText: widget.responseObject.age,
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Height (CM)                                                      ',
              ),
              const SizedBox(
                height: 5,
              ),
              GUTextBox(
                labelText: widget.responseObject.hight,
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Weight (KG)                                                       ',
              ),
              const SizedBox(
                height: 5,
              ),
              GUTextBox(
                labelText: widget.responseObject.weight,
              ),
              const SizedBox(
                height: 10,
              ),
              const StyledText(
                'Health Conditions                                            ',
              ),
              const SizedBox(
                height: 5,
              ),
              const GUTextBox(
                labelText: 'Health Conditions is good',
              ),
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
}
