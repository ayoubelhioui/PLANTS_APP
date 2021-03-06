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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors('0xFF325A3E')),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Image.asset('assets/images/login_page.png'),
                height: MediaQuery.of(context).size.height / 2.2,
                // width: /*MediaQuery.of(context).size.width*/ double.infinity,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome ',
                    style: TextStyle(
                      fontFamily: 'Breadbary',
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Plants',
                    style: TextStyle(
                      fontFamily: 'Breadbary',
                      fontSize: 40,
                      color: Color.fromARGB(255, 50, 90, 62),
                    ),
                  ),
                ],
              ),
              const Text(
                'login to your account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
              const SizedBox(height: 30),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
