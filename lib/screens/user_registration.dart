// import 'package:first/screens/loading_screen.dart';
// import 'package:first/screens/verification_reg.dart';
// import 'package:first/services/auth.dart';
// import 'package:flutter/material.dart';
// import 'package:first/widgets/text_box.dart';
// import 'package:first/widgets/custom_button.dart';

// class UserRegistration extends StatefulWidget {
//   final Function toggle;
//   const UserRegistration({super.key, required this.toggle});

//   @override
//   State<UserRegistration> createState() => _UserRegistrationState();
// }

// class _UserRegistrationState extends State<UserRegistration> {
//   final AuthServices _auth = AuthServices();

//   final _formKey = GlobalKey<FormState>();

//   String email = "";

//   String password = "";

//   String username = "";

//   String birthday = "";

//   String cpassword = "";

//   @override
//   Widget build(context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const LoadingScreen(),
//               ),
//             );
//           },
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
//                       ),
//                       Text(
//                         'Register',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 25,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   TextFormField(
//                       decoration: textInputDecoration,
//                       validator: (val) =>
//                           val!.length < 6 ? "Enter a valid email" : null,
//                       onChanged: (val) {
//                         setState(() {
//                           email = val;
//                         });
//                       }),
//                   const SizedBox(height: 15),
//                   TextFormField(
//                       decoration:
//                           textInputDecoration.copyWith(hintText: "User Name"),
//                       validator: (val) =>
//                           val!.length < 6 ? "Enter a valid User Name" : null,
//                       onChanged: (val) {
//                         setState(() {
//                           username = val;
//                         });
//                       }),
//                   const SizedBox(height: 15),
//                   TextFormField(
//                       keyboardType: TextInputType.datetime,
//                       decoration:
//                           textInputDecoration.copyWith(hintText: "Birthday"),
//                       validator: (val) =>
//                           val!.length < 6 ? "Enter your Birth Date" : null,
//                       onChanged: (val) {
//                         setState(() {
//                           birthday = val;
//                         });
//                       }),
//                   const SizedBox(height: 15),
//                   TextFormField(
//                       decoration:
//                           textInputDecoration.copyWith(hintText: "password"),
//                       validator: (val) => val?.isEmpty == true
//                           ? "Enter a valid password"
//                           : null,
//                       onChanged: (val) {
//                         setState(() {
//                           password = val;
//                         });
//                       }),
//                   const SizedBox(height: 15),
//                   TextFormField(
//                       decoration:
//                           textInputDecoration.copyWith(hintText: " confirm password"),
//                       validator: (val) => val?.isEmpty == true
//                           ? "Enter a valid password"
//                           : null,
//                       onChanged: (val) {
//                         setState(() {
//                           cpassword = val;
//                         });
//                       }),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Image.asset(
//                         'assets/images/Prototyping.jpg',
//                         width: 220,
//                         height: 160,
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.all(30.0),
//                     child: CustomButton(
//                       text: 'Register',
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => VerificationReg()),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:first/widgets/text_box.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/services/auth.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/widgets/small_widgets.dart';
import 'package:flutter/services.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String username = '';
  String birthday = '';
  String cpassword = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'Email'),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'User Name'),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter a username' : null,
                          onChanged: (val) {
                            setState(() => username = val);
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(
                                8), // Adjust the length as needed
                            DateInputFormatter() // Custom formatter for YYYY/MM/DD format
                          ],
                          decoration: textInputDecoration.copyWith(
                            hintText:
                                'Birthday YYYY/MM/DD', // Hint text reflects desired format
                          ),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter your birthday' : null,
                          onChanged: (val) {
                            setState(() => birthday = val);
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Password'),
                          validator: (val) => val!.length < 6
                              ? 'Enter a password 6+ characters long'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 320,
                        height: 50,
                        child: TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Confirm Password'),
                          validator: (val) =>
                              val != password ? 'Passwords do not match' : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => cpassword = val);
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        error,
                        style:
                            const TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CustomButton(
                    text: 'Register',
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        dynamic result =
                            await _auth.registerWithEmailAndPassword(
                          email,
                          password,
                          username,
                          birthday,
                        );
                        if (result == null) {
                          setState(() => error = 'Please supply a valid email');
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoadingScreen()),
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
    );
  }
}
