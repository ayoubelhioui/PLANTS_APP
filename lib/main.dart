import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import 'screens/Login_Page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
