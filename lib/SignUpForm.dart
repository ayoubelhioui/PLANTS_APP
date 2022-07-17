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
              height: 25,
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 50, 90, 62),
              ),
            ),
            const Text(
              'term of use and privacy policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/SignUp_page_second.png'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) return;
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 50, 90, 62),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account? ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    )),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 50, 90, 62),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
