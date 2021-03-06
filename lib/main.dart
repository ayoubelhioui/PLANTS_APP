import 'package:flutter/material.dart';
import 'package:plants_app/screens/Login_Page.dart';
import 'package:plants_app/screens/Shop_Page.dart';
import 'package:plants_app/screens/home_page.dart';
import 'screens/Splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopPage(
        imagepath: 'assets/images/Fourth_Recent_Viewed.jpg',
      ),
    ),
  );
}
