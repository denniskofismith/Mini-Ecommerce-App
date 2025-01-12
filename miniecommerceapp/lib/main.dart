import 'package:flutter/material.dart';
import 'package:miniecommerceapp/homepage.dart';
import 'package:miniecommerceapp/models/shop.dart';
import 'package:miniecommerceapp/pages/cart.dart';
import 'package:miniecommerceapp/pages/intro_page.dart';
import 'package:miniecommerceapp/pages/shop.dart';
import 'package:miniecommerceapp/themes/lightmode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (contex) => Shop(),
  child: const MyApp() ,),
  );

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
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const ShopCart(),
      },
      theme: lightmode,
       home: HomepageCommerce(),
       
    );
  }
}
