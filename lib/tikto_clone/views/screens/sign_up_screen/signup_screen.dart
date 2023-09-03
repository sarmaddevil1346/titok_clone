import 'package:flutter/material.dart';
import 'package:titok_clone/tikto_clone/views/screens/sign_up_screen/TextAreaFileds.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Back to Tiktok",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign in with your E-Mail and Password\n continue with social media",
                  textAlign: TextAlign.center,
                ),
                InputTextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
