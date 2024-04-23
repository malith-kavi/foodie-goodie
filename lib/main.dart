import 'dart:io';
import 'package:first/models/UserModel.dart';
import 'package:first/routes.dart';
import 'package:first/screens/Suggestions.dart';
import 'package:first/screens/about_us.dart';
import 'package:first/screens/add_breakfast.dart';
import 'package:first/screens/add_dinner.dart';
import 'package:first/screens/add_lunch.dart';
import 'package:first/screens/alergies.dart';
import 'package:first/screens/change_password.dart';
import 'package:first/screens/forget_password.dart';
import 'package:first/screens/gender_selecter.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/screens/notifications.dart';
import 'package:first/screens/profile_picture.dart';
import 'package:first/screens/suggest_breakfast.dart';
import 'package:first/screens/suggest_dinner.dart';
import 'package:first/screens/suggest_lunch.dart';
import 'package:first/screens/update.dart';
import 'package:first/screens/user_profile.dart';
import 'package:first/screens/user_registration.dart';
import 'package:first/screens/verification_fpw.dart';
import 'package:first/screens/verification_reg.dart';
import 'package:first/screens/weight.dart';
import 'package:first/screens/wrapper.dart';
import 'package:first/services/auth.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
//import 'package:first/screens/blacklist.dart';
import 'package:first/screens/height.dart';
import 'package:first/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Future<void> main() async {
//   // runApp(const MyApp());
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp();
//   runApp(const MyApp());
//   // runApp(
//   //   MaterialApp(
//   //     debugShowCheckedModeBanner: false,
//   //     home: Scaffold(
//   //       body: LoginScreen(),
//   //     ),
//   //   ),
//   // );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<UserModel?>.value(
//       initialData: UserModel(uid: ""),
//       value: AuthServices().user,
//       child: MaterialApp(
//         home: VerificationReg(),
//       ),
//     );
//   }
// }

// runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body: LoginScreen(),
//     ),
//   ),
// );

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyBl1swDjoRz0kUx8hCLTyayiCOFoDlGZrc",
            appId: "1:689972184927:android:8ad4bfcb178eff85db18ea",
            messagingSenderId: "689972184927",
            projectId: "foodiegoodie-22262",
            storageBucket: "foodiegoodie-22262.appspot.com",
          ),
        )
      : await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Your App',
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        home: UserRegistration());
  }
}
