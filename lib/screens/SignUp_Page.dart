import 'package:flutter/material.dart';
import 'package:plants_app/SignUpForm.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 210),
              child: Image.asset('assets/images/SignUp_Page_flower.png'),
            ),
            const Text(
              'Register',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Create your account',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            const SignUpForm(),
          ],
        ),
      ),
    );
  }
}
