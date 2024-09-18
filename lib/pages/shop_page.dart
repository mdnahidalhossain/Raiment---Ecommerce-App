//import 'package:ecommerce_app/models/brand_categories.dart';
// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/pages/brand_tile.dart';
import 'package:ecommerce_app/pages/featured_tile.dart';
//import 'package:ecommerce_app/pages/brand_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // List<BrandCategories> categories = [];

  // void getCategories() {
  //   categories = BrandCategories.getCategories();
  // }

  @override
  Widget build(BuildContext context) {
    // getCategories();
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, left: 36),
              child: const Text(
                'Welcome\nMD.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
        
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
        
            Divider(color: Color.fromARGB(255, 38, 38, 38).withOpacity(0.8)),
        
            Container(
              padding: EdgeInsets.only(top: 30, left: 36),
              child: const Text(
                'Brands',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
        
            SizedBox(
              height: 30,
            ),
        
            Container(
              child: BrandTile(),
            ),
        
            SizedBox(
              height: 30,
            ),
        
            Divider(color: Color.fromARGB(255, 38, 38, 38).withOpacity(0.8)),
        
            //SizedBox(height: 30,),
        
            Container(
              padding: EdgeInsets.only(top: 30, left: 36),
              child: const Text(
                'Featured',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30,),
        
            Container(
              child: FeaturedTile(),
            ),

            SizedBox(height: 30,),
      
            // Center(
            //   child: Container(
            //     width: 100,
            //     height: 500,
            //     color: Colors.red,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
