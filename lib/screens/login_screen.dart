import 'package:first/screens/forget_password.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/user_registration.dart';
import 'package:first/services/auth.dart';
import 'package:first/widgets/bottom_navigation_bar.dart';
import 'package:first/widgets/s_button.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/style_text.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/widgets/text_box.dart';
import 'package:first/widgets/custom_button.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final AuthServices _auth = AuthServices();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String email = '';
//   String password = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Your existing UI widgets...
//                       TextFormField(
//                         decoration: textInputDecoration,
//                         validator: (val) =>
//                             val!.isEmpty ? 'Enter an email' : null,
//                         onChanged: (val) {
//                           setState(() {
//                             email = val;
//                           });
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                         decoration:
//                             textInputDecoration.copyWith(hintText: 'Password'),
//                         validator: (val) =>
//                             val!.isEmpty ? 'Enter a password' : null,
//                         obscureText: true,
//                         onChanged: (val) {
//                           setState(() {
//                             password = val;
//                           });
//                         },
//                       ),
//                       // Your existing UI widgets...
//                       Padding(
//                         padding: const EdgeInsets.all(30.0),
//                         child: CustomButton(
//                           text: 'Login',
//                           onPressed: () async {
//                             if (_formKey.currentState!.validate()) {
//                               dynamic result =
//                                   await _auth.signInWithEmailAndPassword(
//                                 email,
//                                 password,
//                               );
//                               if (result == null) {
//                                 setState(() {
//                                   //error = 'Could not sign in with those credentials';
//                                 });
//                               } else {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const Dash(),
//                                   ),
//                                 );
//                               }
//                             }
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthServices _auth = AuthServices();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Form(
            child: Center(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        logo,
                        width: 250,
                        height: 250,
                      ),
                      const StyledText('Enter Your Email & password to Log in'),
                      const SizedBox(height: 40),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                            decoration: textInputDecoration,
                            validator: (val) =>
                                val!.isEmpty ? 'Enter an email' : null,
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            }),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: "password"),
                            validator: (val) => val?.isEmpty == true
                                ? "Enter a valid password"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });
                            }),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SButton(
                              text: 'Forgot Password',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPassword(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const StyledText('Or login with'),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.facebook_rounded,
                                  size: 30.0,
                                  color: Color.fromARGB(255, 2, 27, 254)),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              icon: Image.asset(
                                google,
                                height: 30,
                                width: 30,
                              ),
                              onPressed: () {},
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const StyledText('Do not have an account ?'),
                          SButton(
                            text: 'Register Now',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserRegistration(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: CustomButton(
                          text: 'Login',
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              dynamic result =
                                  await _auth.signInWithEmailAndPassword(
                                email,
                                password,
                              );
                              if (result == null) {
                                setState(() {
                                  // error message
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
