import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;
  BottomNavBar(
    { required this.onTabChange,
      super.key
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: 17),
    
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        color: const Color.fromARGB(255, 209, 209, 209),
        activeColor: const Color.fromARGB(255, 38, 38, 38),
        // tabActiveBorder:Border.all(color: const Color.fromARGB(255, 38, 38, 38)),
        tabBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        tabBorderRadius: 10,
        padding: EdgeInsets.all(10),
        iconSize: 40,
        onTabChange: (value) => onTabChange!(value),

        tabs: const[
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),

          GButton(
            icon: Icons.list,
            text: 'Wishlist',
          ),

          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),

          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ]
      )

      
    );
  }
}