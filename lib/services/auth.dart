import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/models/UserModel.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userWithFirebaseUserid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }
}
