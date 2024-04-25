import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first/screens/loading_screen.dart';
import 'package:first/screens/verification_fpw.dart';
import 'package:first/widgets/custom_button.dart';
import 'package:first/widgets/style_text.dart';
import 'package:flutter/material.dart';

var forget = 'assets/images/forget_password.png';

String email = "";

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      // Navigate to VerificationFPW page upon successful password reset
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerificationFPW(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print("Enter Valid Mail");
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const LoadingScreen(),
              ),
            );
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                          child: StyledText(
                            'Enter your registered email address \nand we’ll send a code to login again',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: 320,
                      height: 50,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (val) =>
                            val!.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 60),
                    Image.asset(
                      forget,
                      width: 300,
                      height: 200,
                    ),
                    //Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CustomButton(
                        text: 'Reset Password',
                        onPressed: passwordReset,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
