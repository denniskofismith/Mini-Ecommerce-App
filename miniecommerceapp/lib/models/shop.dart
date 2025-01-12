import 'package:miniecommerceapp/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  // ignore: unused_field
  final List _shop = [
    Products(
      name: "Product 1", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
    Products(
      name: "Product 2", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
    Products(
      name: "Product 3", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
    Products(
      name: "Product 4", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
    Products(
      name: "Product 5", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
    Products(
      name: "Product 6", 
      price: 2200.00,
       description: "Itme Description",
        imagePath: "imagePath"),
  ];
  // user cart 

// ignore: unused_field
  final List _cart = [];
  // get product list
  List get shop => _shop;

  // get user cart
  List get cart => _cart;

  // add itme to cart
  void addItemToCart(Products item){
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Products item){
    _cart.remove(item);
    notifyListeners();
  }
}