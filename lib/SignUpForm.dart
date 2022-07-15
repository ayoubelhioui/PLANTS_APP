import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) return 'field is required';
              },
              autofocus: true,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                filled: true,
                hintText: 'Full Name',
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color.fromARGB(255, 50, 90, 62),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) return 'field is required';
              },
              autofocus: true,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                filled: true,
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color.fromARGB(255, 50, 90, 62),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) return 'field is required';
              },
              autofocus: true,
              obscureText: true,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                filled: true,
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 50, 90, 62),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) return 'field is required';
              },
              autofocus: true,
              obscureText: true,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                filled: true,
                hintText: 'Confirm Password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 50, 90, 62),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'By signing you agree to our',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 50, 90, 62),
              ),
            ),
            const Text(
              'term of use and privacy policy',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Image.asset('assets/images/SignUp_page_second.png'),
          ],
        ),
      ),
    );
  }
}
