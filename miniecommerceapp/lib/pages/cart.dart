// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ShopCart extends StatelessWidget {
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}