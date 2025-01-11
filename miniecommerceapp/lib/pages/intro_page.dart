// ignore_for_file: deprecated_member_use

import 'package:miniecommerceapp/components/buttons.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_basket_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 80,
            ),
            
        
            const SizedBox(height: 25),
        
            Text("Minimal Shop",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
        
            const SizedBox(height: 10),
        
            Text(
              "Premium Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                
              ),),

              const SizedBox(height:25),

              IntroButtons(
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
                 child: Icon(Icons.arrow_forward)
                 ),
          ],
        ),
      ),
    );
  }
}