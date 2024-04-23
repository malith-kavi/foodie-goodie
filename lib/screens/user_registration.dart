import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/models/UserModel.dart';
import 'package:first/screens/notifications.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/text_box.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/services/auth.dart';
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

  //Model for registration User
  UserModel? _modelWithFirebaseUserId(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

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
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Form(
                        key: _formKey,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              width: 320,
                              height: 50,
                              child: TextFormField(
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'Email'),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return "Enter an email";
                                  } else {
                                    RegExp emailPattern = RegExp(
                                      r'^[^\s@]+@[^\s@]+\.[^\s@]+$',
                                    );

                                    if (!emailPattern.hasMatch(val)) {
                                      return "Enter a valid email address";
                                    }
                                    return null; //no errors in the validation
                                  }
                                },
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                            ),
                            const SizedBox(height: 25),
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
                            const SizedBox(height: 25),
                            Container(
                              width: 320,
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(8),
                                  DateInputFormatter()
                                ],
                                decoration: textInputDecoration.copyWith(
                                  hintText: 'Birthday',
                                ),
                                validator: (val) =>
                                    val!.isEmpty ? 'Enter your birthday' : null,
                                onChanged: (val) {
                                  setState(() => birthday = val);
                                },
                              ),
                            ),
                            const SizedBox(height: 25),
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
                            const SizedBox(height: 25),
                            Text(
                              error,
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 250),
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
                              );
                              // save user data from firestore

                              if (result == null) {
                                setState(
                                    () => error = 'User Already Registered');
                              } else {
                                await _auth.storeData(
                                    result.uid, username, birthday, email);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Notifications(
                                            docId: result.uid,
                                          )),
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
