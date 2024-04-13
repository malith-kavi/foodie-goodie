// import 'package:flutter/material.dart';
// //import 'package:first/style_text.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(DatePickerApp());
// // }

// // // class DatePickerApp extends StatelessWidget {
// // //   const DatePickerApp({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return const CupertinoApp(
// // //       theme: CupertinoThemeData(brightness: Brightness.light),
// // //       home: DatePickerExample(),
// // //     );
// // //   }
// // // }

// // // class DatePickerExample extends StatefulWidget {
// // //   const DatePickerExample({Key? key}) : super(key: key);

// // //   @override
// // //   State<DatePickerExample> createState() => _DatePickerExampleState();
// // // }

// // // class _DatePickerExampleState extends State<DatePickerExample> {
// // //   double selectedHeight = 160.0; // Initial height

// // //   // This function displays a CupertinoModalPopup with a reasonable fixed height
// // //   // which hosts a custom height picker.
// // //   void _showDialog(Widget child) {
// // //     showCupertinoModalPopup<void>(
// // //       context: context,
// // //       builder: (BuildContext context) => Container(
// // //         height: 216,
// // //         padding: const EdgeInsets.only(top: 6.0),
// // //         // The Bottom margin is provided to align the popup above the system
// // //         // navigation bar.
// // //         margin: EdgeInsets.only(
// // //           bottom: MediaQuery.of(context).viewInsets.bottom,
// // //         ),
// // //         // Provide a background color for the popup.
// // //         color: CupertinoColors.systemBackground.resolveFrom(context),
// // //         // Use a SafeArea widget to avoid system overlaps.
// // //         child: SafeArea(
// // //           top: false,
// // //           child: child,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return CupertinoPageScaffold(
// // //       navigationBar: const CupertinoNavigationBar(
// // //         middle: Text('Height Selector'),
// // //       ),
// // //       child: DefaultTextStyle(
// // //         style: TextStyle(
// // //           color: CupertinoColors.label.resolveFrom(context),
// // //           fontSize: 22.0,
// // //         ),
// // //         child: Center(
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: <Widget>[
// // //               _DatePickerItem(
// // //                 children: <Widget>[
// // //                   const Text('Height'),
// // //                   CupertinoButton(
// // //                     // Display a custom height picker.
// // //                     onPressed: () => _showDialog(
// // //                       CupertinoPicker(
// // //                         itemExtent: 32.0,
// // //                         onSelectedItemChanged: (int index) {
// // //                           setState(() {
// // //                             selectedHeight = 100.0 + index * 5.0; // Adjust as needed
// // //                           });
// // //                         },
// // //                         children: List.generate(
// // //                           101, // Number of height options
// // //                           (index) => Center(
// // //                             child: Text(
// // //                               '${100 + index * 5} cm',
// // //                               style: const TextStyle(fontSize: 20.0),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     child: Text(
// // //                       '${selectedHeight.toStringAsFixed(1)} cm',
// // //                       style: const TextStyle(
// // //                         fontSize: 22.0,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // This class simply decorates a row of widgets.
// // // class _DatePickerItem extends StatelessWidget {
// // //   const _DatePickerItem({required this.children});

// // //   final List<Widget> children;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return DecoratedBox(
// // //       decoration: const BoxDecoration(
// // //         border: Border(
// // //           top: BorderSide(
// // //             color: CupertinoColors.inactiveGray,
// // //             width: 0.0,
// // //           ),
// // //           bottom: BorderSide(
// // //             color: CupertinoColors.inactiveGray,
// // //             width: 0.0,
// // //           ),
// // //         ),
// // //       ),
// // //       child: Padding(
// // //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // //         child: Row(
// // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //           children: children,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final AuthServices _auth = AuthServices();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String email = "";

//   String password = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: SafeArea(
//           child: Form(
//             child: Center(
//               key: _formKey,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         logo,
//                         width: 250,
//                         height: 250,
//                       ),
//                       const StyledText(
//                           'Enter Your Email & password to Log in'),
//                       const SizedBox(height: 40),
//                       TextFormField(
//                           decoration: textInputDecoration,
//                           validator: (val) =>
//                               val!.isEmpty ? 'Enter an email' : null,
//                           onChanged: (val) {
//                             setState(() {
//                               email = val;
//                             });
//                           }),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                           decoration: textInputDecoration.copyWith(
//                               hintText: "password"),
//                           validator: (val) => val?.isEmpty == true
//                               ? "Enter a valid password"
//                               : null,
//                           onChanged: (val) {
//                             setState(() {
//                               password = val;
//                             });
//                           }),
//                       Row(
//                         children: [
//                           SButton(
//                             text: 'Forgot Password',
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) =>
//                                       const ForgetPassword(),
//                                 ),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                       const StyledText('Or login with'),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.facebook_rounded,
//                                   size: 30.0,
//                                   color: Color.fromARGB(255, 2, 27, 254)),
//                               onPressed: () {},
//                             ),
//                             const SizedBox(width: 10),
//                             IconButton(
//                               icon: Image.asset(
//                                 google,
//                                 height: 30,
//                                 width: 30,
//                               ),
//                               onPressed: () {},
//                             ),
//                           ]),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const StyledText('Do not have an account ?'),
//                           SButton(
//                             text: 'Register Now',
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => UserRegistration(),
//                                 ),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                       const Spacer(),
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
//                                   // error message
//                                 });
//                               } else {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => HomePage(),
//                                   ),
//                                 );
//                               }
//                             }
//                           },
//                         ),
//                       ),
//                     ]),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }