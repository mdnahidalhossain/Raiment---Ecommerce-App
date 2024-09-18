import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'product_descrption.dart';

class ProductUtil extends StatefulWidget {

  // void Function(int)? onTap;
  
  // ProductUtil({
  //   super.key,
  //   required this.onTap
  // });

  @override
  State<ProductUtil> createState() => _ProductUtilState();
}

class _ProductUtilState extends State<ProductUtil> {
  //List<ProductUtils> productUtils = [];

  // List<pTile> ptile = [];
  // void getpTile() {
  //   ptile = pTile.getpTile();
  // }
  int currentIndex = 0;
  //bool isSelected = true;


  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    //getProductUtils();
    //getpTile();

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 36, right: 36, bottom: 10),
          child: Positioned(
            // bottom: 15,
            // left: 35,
            //right: 35,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: card1_contents_names.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    //width: currentIndex == entry.key ? 80 : 80,
                    //height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    // decoration: BoxDecoration(
                    //   color: currentIndex == entry.key
                    //     ? const Color.fromARGB(255, 207, 207, 207)
                    //     : const Color.fromARGB(255, 149, 149, 149)
                    // ),
                    child: Text(
                      card1_contents_names[currentIndex],
                      style: TextStyle(
                        fontSize: currentIndex == entry.key ? 16 : 16,
                        //fontSize: 16
                        fontWeight: currentIndex == entry.key
                          ? FontWeight.bold
                          : FontWeight.w400
                      ),
                    ),
                  ),
                  
                );
              },
              //Container()

              ).toList(),
            )
          ),
        ),
        Container(
          child: CarouselSlider(
            items: card1_contents.map((item) => Container(
              margin: EdgeInsets.only(left: 36, right: 36),
              // padding: EdgeInsets.only(left: 36, right: 36),
              child: Stack(
                children: [
                  
                  Container(
                    //margin: EdgeInsets.only(left: 36, right: 36),
                    //padding: EdgeInsets.only(left: 36, right: 36),
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.16),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ] 
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(item),
                  ),
                ],
              ),
            )).toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              // scrollPhysics: BouncingScrollPhysics(),
              // scrollDirection: axisDirectionToAxis(x),
              // autoPlay: true,
              //height: double.infinity,
              //viewportFraction: 1,
              // enlargeCenterPage: false,
              // aspectRatio: 1,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  // for(int i=0; i<card1_contents_names.length; i++) {
                  //   card1_contents_names[i];
                  //   //return card1_contents_names[i];
                  // }
                  //pTile[index]
                });
              },
            )   
          ),
          
        ),
      ],
    );
    //Positioned(child: child)
  }
}