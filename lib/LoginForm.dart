import 'package:flutter/material.dart';
import 'package:plants_app/screens/Home_Page.dart';
import 'package:plants_app/screens/SignUp_Page.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({Key? key}) : super(key: key);

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: const CircleBorder(),
          value: checkboxValue,
          activeColor: const Color.fromARGB(255, 50, 90, 62),
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              checkboxValue = value;
            });
          },
        ),
        const Text(
          'Remember me',
          style: TextStyle(
            color: Color.fromARGB(255, 50, 90, 62),
            fontWeight: FontWeight.bold,
            fontSize: 11,
          ),
        )
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      // width: 270,
      child: Form(
        child: Column(
          children: [
            TextFormField(
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
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              autofocus: true,
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
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RememberMeCheckBox(),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 50, 90, 62),
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    )),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 50, 90, 62),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    ' Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 50, 90, 62),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
