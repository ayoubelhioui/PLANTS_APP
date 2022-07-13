import '../LoginForm.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          child: Image.asset('assets/images/login_page.png'),
          height: MediaQuery.of(context).size.height / 2.2,
          // width: /*MediaQuery.of(context).size.width*/ double.infinity,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome ',
              style: TextStyle(fontFamily: 'Breadbary', fontSize: 40),
            ),
            Text(
              'Plants',
              style: TextStyle(
                  fontFamily: 'Breadbary', fontSize: 40, color: Colors.green),
            ),
          ],
        ),
        const Text(
          'login to your account',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        ),
        const LoginForm(),
      ],
    ));
  }
}
