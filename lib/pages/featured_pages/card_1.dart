// import 'package:ecommerce_app/pages/shop_page.dart';
//import 'package:another_carousel_pro/another_carousel_pro.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommerce_app/models/carousel_images.dart';
import 'package:ecommerce_app/models/featured_products.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
//import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/pages/product_util_pages/product_descrption.dart';
import 'package:ecommerce_app/pages/product_util_pages/product_specification.dart';
import 'package:ecommerce_app/pages/product_util_pages/product_util.dart';
import 'package:ecommerce_app/pages/product_util_pages/size_chart.dart';
import 'package:flutter/material.dart';


class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  Color _iconColor = const Color.fromARGB(255, 38, 38, 38);
  bool _iconTap = false;

  final CarouselController carouselController = CarouselController();

  List<FeaturedProducts> fProducts = [];

  void getFProducts() {
    fProducts = FeaturedProducts.getFProducts();
  }

  int currentIndex = 0;

  // void addToCart(BuildContext context) {
  //   //context = context,
  //   context.read<CartPage>().;
  // }



  @override
  Widget build(BuildContext context) {
    
    getFProducts();
    //getProductUtils();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar:  AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Builder(
                builder:(context) => IconButton(
                  icon: Image.asset(
                    'lib/images/icons8-left.png',
                    color: Color.fromARGB(255, 38, 38, 38),
                    // width: 10.5,
                    ),
                  // iconSize: 40,
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) => HomePage(),)
                    );
                  },
                  //onPressed: () => ShopPage(),
                )
              ),
              actions: [
                //Icon(Icons.favorite),
                Builder(builder:(context) => IconButton(
                  icon: 
                    Icon(Icons.favorite,
                    color: _iconTap?Colors.pink:_iconColor
                  ),
                  iconSize: 40,
                  
                  onPressed: () {
                    setState(() {
                      //_iconColor = Colors.pink;
                      //addToCart(context);
                    
                      _iconTap = !_iconTap;
                    });
                  },
                ),
                  
                )
                
              ],
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  // width: double.infinity,
                  //color: Colors.red,
                  child: CarouselSlider(
                    items: card1_Images.map((item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                            // height: 600,
                          
                          width: double.infinity,),
                      ),)).toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      // scrollPhysics: BouncingScrollPhysics(),
                      // scrollDirection: axisDirectionToAxis(x),
                      // autoPlay: true,
                      height: double.infinity,
                      viewportFraction: 1,
                        // enlargeCenterPage: false,
                        // aspectRatio: 2,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )   
                  ),
                ),
                Positioned(
                  bottom: 15,
                  //left: 35,
                  right: 35,
                  child: Row(
                    children: card1_Images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 21 : 21,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: currentIndex == entry.key
                              ? Colors.black
                              : Colors.white
                          ),
                        ),
                      );
                    }).toList(),
                  )
                )
              ],
            ),
            
            SizedBox(height: 20,),
      
            Container(
              child: Column(
                children: [
                  Text(
                    fProducts[0].fBrand,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 149, 149, 149)
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    fProducts[0].fName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 38, 38, 38),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    fProducts[0].fPrice,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 38, 38, 38),
                    ),
                  ),
                  SizedBox(height: 20,),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(color: Colors.black)
                        ),
                        child: fProducts[0].color1,
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 119, 119, 119),
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(color: Colors.black)
                        ),
                        child: fProducts[0].color1,
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 119, 119, 119),
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(color: Colors.black)
                        ),
                        child: fProducts[0].color1,
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 119, 119, 119),
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(color: Colors.black)
                        ),
                        child: fProducts[0].color1,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              child: fProducts[0].fSize,
                            ),
                            Container(
                              child: const Text(
                                'M',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                //textAlign: Text
                              ),
                                // alignment: Alignment.center,
                            )
                          ],
                        )
                      ),
      
                      SizedBox(width: 20,),
      
                      Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              child: fProducts[0].fSize,
                            ),
                            Container(
                              child: const Text(
                                'L',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                //textAlign: Text
                              ),
                                // alignment: Alignment.center,
                            )
                          ],
                        )
                      ),
      
                      SizedBox(width: 20,),
      
                      Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              child: fProducts[0].fSize,
                            ),
                            Container(
                              child: const Text(
                                'XL',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                //textAlign: Text
                              ),
                                // alignment: Alignment.center,
                            )
                          ],
                        )
                      ),
                    ],
                  ),
      
                  SizedBox(height: 20,),
      
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 36, right: 36),
                          // padding: EdgeInsets.only(left: 36, right: 36),
                          //width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 38, 38, 38),
                            borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),),
                        )
                      ],
                    )
                  ),
      
                  SizedBox(height: 20,),
      
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 36, right: 36),
                          //padding: EdgeInsets.only(left: 36, right: 36),
                          //width:double.maxFinite,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 38, 38, 38),
                            borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  // SizedBox(height: 30,),
                  // Divider(color: const Color.fromARGB(255, 38, 38, 38),)
                ],
              ), 
            ),

            SizedBox(height: 30,),
            Divider(color: const Color.fromARGB(255, 38, 38, 38).withOpacity(0.8)),
            SizedBox(height: 30,),
            
            Container(child: ProductUtil()),

            SizedBox(height: 50,)
          ],
        ),
      ),
      
    );
  }

}

