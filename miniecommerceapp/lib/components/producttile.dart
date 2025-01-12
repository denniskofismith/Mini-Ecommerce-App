// ignore_for_file: avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:miniecommerceapp/models/products.dart';
import 'package:miniecommerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final Products products;

  const ProductTile({super.key,required this.products});


  // add to cart button pressed

  void addToCart(BuildContext context){
  {
    showDialog(
      context: context,
       builder: (context) => AlertDialog(
        content: Text("Add "+products.name + " to your cart "),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
            ),

          MaterialButton(
            onPressed: () {
               Navigator.pop(context);
               
               context.read<Shop>().addItemToCart(products);
               },
               child: Text("Yes"),
            ),
        ],
       ) );
      }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius:  BorderRadius.circular(12),
      ),
      width: 300,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      // Product image
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
      aspectRatio: 1,
       child: Container(
        decoration:  BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius:  BorderRadius.circular(12),
       
        ),
        width:  double.infinity,
        padding:  EdgeInsets.all(25),
       
        child: Icon(Icons.favorite)),
     ),
     SizedBox(height: 25 ,),

      // product name 

      Text(
        products.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
      SizedBox(height: 10,),
      // product description
      Text(
        products.description,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary
        ),),

        
    ],
     ),

     const SizedBox(height: 25,),

      // product price + add to cart button
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$' + products.price.toStringAsFixed(2)),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(onPressed: () => addToCart(context), icon: Icon(Icons.add))
            )
        ],
      ),
        ],
      ),
     
    );
  }
}
