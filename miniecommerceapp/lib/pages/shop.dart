import 'package:miniecommerceapp/components/productTile.dart';
import 'package:miniecommerceapp/models/shop.dart';
import 'package:miniecommerceapp/pages/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    final products  = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Page"),
         backgroundColor: Colors.transparent,
         elevation: 0,
         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
         actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, '/cart_page'), icon: Icon(Icons.shopping_cart) )
         ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            SizedBox(height: 25,),
            // shop subtitile
            Center(
              child: Text("Pick from this selected list of premium goods",
              style: TextStyle(
                color:  Theme.of(context).colorScheme.inversePrimary,
              ),)),
                
            // product list 
            SizedBox(
          height: 550,
          child: ListView.builder(
            itemCount: products.length,
            padding: EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
                // get  each individual product from shop
                final product = products[index];
          
                return ProductTile(products: product);
            },
               ),
        )
          ],
        )
        );
  }
}