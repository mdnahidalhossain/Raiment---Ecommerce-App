import 'package:ecommerce_app/pages/featured_pages/card_1.dart';
import 'package:ecommerce_app/pages/featured_pages/card_2.dart';
import 'package:ecommerce_app/pages/featured_pages/card_3.dart';
import 'package:flutter/material.dart';

class FeaturedProducts {
  String fImagePath;
  String fName;
  String fBrand;
  String fPrice;
  String fStatus;
  final Widget froute;
  final Widget color1;
  final Widget fSize;

  FeaturedProducts({
    required this.fImagePath,
    required this.fName,
    required this.fBrand,
    required this.fPrice,
    required this.fStatus,
    required this.froute,
    required this.color1,
    required this.fSize
  });

  static List<FeaturedProducts> getFProducts() {
    List<FeaturedProducts> fProducts = [];

    fProducts.add(FeaturedProducts(
      fImagePath: 'lib/images/featured-cards/card-1.jpg',
      fName: 'Contrast Embroidery T-Shirt',
      fBrand: 'ZARA',
      fPrice: '\$22.16',
      fStatus: 'In Stock',
      froute: Card1(),
      color1: Container(
        //padding: EdgeInsets.only(right: 20),
        //margin: EdgeInsets.only(right: 20),
        height: 19,
        width: 19,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(19)
          ),
      ),
      fSize: Container(
        width: 68,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 170, 170, 170)
        ),
      )
    ));

    fProducts.add(FeaturedProducts(
      fImagePath: 'lib/images/featured-cards/card-2.png',
      fName: 'Stock Tucker Jacket',
      fBrand: 'Levi\'s',
      fPrice: '\$98',
      fStatus: 'In Stock',
      froute: Card2(),
      color1: Container(
        color: Colors.red,
      ),
      fSize: Container()
    ));

    fProducts.add(FeaturedProducts(
      fImagePath: 'lib/images/featured-cards/card-3.jpg',
      fName: 'Relaxed Fit Sweatshirt',
      fBrand: 'H&M',
      fPrice: '\$10.53',
      fStatus: 'In Stock',
      froute: Card3(),
      color1: Container(
        height: 19,
        width: 19,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(19)
        ),
      ),
      fSize: Container()
    ));

    fProducts.add(FeaturedProducts(
      fImagePath: 'lib/images/featured-cards/card-4.jpg',
      fName: 'Slogan Print Hoodie',
      fBrand: 'ZARA',
      fPrice: '\$43.38',
      fStatus: 'In Stock',
      froute: Card3(),
      color1: Container(
        color: Colors.red,
      ),
      fSize: Container()
    ));

    return fProducts;
  }
}
