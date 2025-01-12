import 'package:miniecommerceapp/pages/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
              // drawer Header Logo
          DrawerHeader(
            child:Center(
               child: Icon(
              Icons.shopping_basket_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 80,
            ),
            ),
            ),
            const SizedBox(height: 25),

            // shop title
            MyListTile(
              icon: Icons.home,
               text: "Shop", 
               onTap: () => Navigator.pop(context),
               ),

               // cart tile
            MyListTile(
              icon: Icons.shopping_cart,
               text: "Cart", 
               onTap: (){
                Navigator.pop(context);

                Navigator.pushNamed(context,'/cart_page');
               }
               ),
               //exit shop title
          
          ],
        ),
    Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: MyListTile(
                icon: Icons.logout,
                 text: "Exit", 
                 onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/intro_page');
                 }
                 ),
    ),
        ],
      ),
    );
  }
}