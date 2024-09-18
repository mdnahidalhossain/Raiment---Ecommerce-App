//import 'package:flutter/material.dart';

// class BrandCategories {
//   String imagePath;
//   String iconPath;

//   BrandCategories({
//     required this.imagePath,
//     required this.iconPath,
//   });
// }

import 'package:ecommerce_app/pages/brand_pages/CK_page.dart';
import 'package:ecommerce_app/pages/brand_pages/h&m_page.dart';
import 'package:ecommerce_app/pages/brand_pages/levis_page.dart';
import 'package:ecommerce_app/pages/brand_pages/zara_page.dart';
import 'package:flutter/material.dart';

class BrandCategories {
  String imagePath;
  String iconPath;
  final Widget route;

  BrandCategories({
    required this.imagePath,
    required this.iconPath,
    required this.route,
  });

  static List<BrandCategories> getCategories() {
    List<BrandCategories> categories = [];

    categories.add(BrandCategories(
      imagePath: 'lib/images/brands/zara.jpg',
      iconPath: 'lib/images/brands/icon-zara.png',
      route: ZaraPage()
    ));

    categories.add(BrandCategories(
      imagePath: 'lib/images/brands/CalvinKlein.png',
      iconPath: 'lib/images/brands/icon-calvinKlein.png',
      route: CkPage()
    ));

    categories.add(BrandCategories(
      imagePath: 'lib/images/brands/H&M.png',
      iconPath: 'lib/images/brands/icon-h&m.png',
      route: HMPage()
    ));

    categories.add(BrandCategories(
      imagePath: 'lib/images/brands/levis.png',
      iconPath: 'lib/images/brands/icon-levis.png',
      route: LevisPage()
    ));

    return categories;
  }
}
