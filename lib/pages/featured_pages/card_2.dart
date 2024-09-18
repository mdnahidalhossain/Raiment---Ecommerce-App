import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/models/carousel_images.dart';
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {

  Color _iconColor = const Color.fromARGB(255, 38, 38, 38);
  bool _iconTap = false;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 450,
              // width: double.infinity,
              //color: Colors.red,
            child: CarouselSlider(
            items: card2_Images.map((item) => Container(
            child: Center(
              child: Image.asset(
                item,
                fit: BoxFit.cover,
                    // height: 600,
                    
                     width: double.infinity,),
              ),)).toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                // scrollDirection: axisDirectionToAxis(x),
                //autoPlay: true,
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
    );
  }
}