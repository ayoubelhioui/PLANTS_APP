import 'package:flutter/material.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({Key? key}) : super(key: key);

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        shape: const CircleBorder(),
        value: checkboxValue,
        activeColor: Colors.green,
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
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      )
    ]);
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              filled: true,
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RememberMeCheckBox(),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
            ),
          )
        ],
      )),
    );
  }
}
