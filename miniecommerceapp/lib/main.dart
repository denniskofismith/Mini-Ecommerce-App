import 'package:flutter/material.dart';
import 'package:miniecommerceapp/homepage.dart';
import 'package:miniecommerceapp/pages/intro_page.dart';
import 'package:miniecommerceapp/pages/shop.dart';
import 'package:miniecommerceapp/themes/lightmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes:  {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage()
      },
      theme: lightmode,
       home: HomepageCommerce(),
       
    );
  }
}
