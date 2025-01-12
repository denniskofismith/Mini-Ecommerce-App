// ignore_for_file: deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:miniecommerceapp/components/buttons.dart';
import 'package:miniecommerceapp/models/products.dart';
import 'package:provider/provider.dart';
import '../models/shop.dart';
class ShopCart extends StatelessWidget {
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {

    final cart = context.watch<Shop>().cart;

    void removeFromCart(BuildContext context,Products products){
       showDialog(
      context: context,
       builder: (context) => AlertDialog(
        content: Text("Remove "+ products.name + " from your cart "),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
            ),

          MaterialButton(
            onPressed: () {
               Navigator.pop(context);
               
               context.read<Shop>().removeItemFromCart(products);
               },
               child: Text("Yes"),
            ),
        ],
       ) );
    }

    void payButtonPressed(BuildContext context){
        showDialog(
      context: context,
       builder: (context) => AlertDialog(
        content: Text("User wants to pay? Connect this app to your payment backend "),
       ) );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // cart list 
          Expanded(
            child: cart.isEmpty ? Center(child: Text("Cart Empty")) : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context,index) {
                final item = cart[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon:  Icon(Icons.remove),
                    onPressed: () => removeFromCart(context,item),
                    ),
                  
                );
              } 
              )
          ),

          // pay Button 
         Padding(
           padding: const EdgeInsets.all(50.0),
           child: IntroButtons(onTap: () => payButtonPressed(context), child: Text("Pay Now")),
         ),

        ],
      ),
    );
  }
}