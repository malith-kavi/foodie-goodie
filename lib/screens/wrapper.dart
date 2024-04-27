import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/models/UserModel.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return LoginScreen();
    } else {
      dynamic response = fetchUsersDetails(user.uid);
      return HomePage(responseObject: response);
    }
  }

  Future<GetUserDetails?> fetchUsersDetails(String docID) async {
    try {
      var user =
          FirebaseFirestore.instance.collection('user_details').doc(docID);
      user.get().then((value) {
        String pic = value['Profic'].toString();
        String name = value['UserName'].toString();
        String age = value['BirthDay'].toString();
        String height = value['Height'].toString();
        String weight = value['Weight'].toString();
        GetUserDetails getUserDetails = GetUserDetails(
          userid: user.id,
          userName: name,
          profilePicture: pic,
          age: age,
          hight: height,
          weight: weight,
        );
        return getUserDetails;
      });
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
