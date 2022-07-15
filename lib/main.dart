import 'package:flutter/material.dart';
import 'package:plants_app/screens/SignUp_Page.dart';
import '../screens/home_page.dart';
import 'screens/Login_Page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}
