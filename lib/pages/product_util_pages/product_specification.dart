// import 'package:flutter/material.dart';

// class ProductSpecification extends StatelessWidget {
//   const ProductSpecification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 36, right: 36),
//       height: 150,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.16),
//             spreadRadius: 5,
//             blurRadius: 6,
//             offset: Offset(0, 3), // changes position of shadow
//           )
//         ] 
//       ),
//       child: Center(child: Text('Description tile')),
//     );
//   }
// }


// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'product_descrption.dart';

// class ProductUtil extends StatefulWidget {

//   // void Function(int)? onTap;
  
//   // ProductUtil({
//   //   super.key,
//   //   required this.onTap
//   // });

//   @override
//   State<ProductUtil> createState() => _ProductUtilState();
// }

// class _ProductUtilState extends State<ProductUtil> {
//   // List<ProductUtils> productUtils = [];
//   int currentIndex = 0;

//   final CarouselController carouselController = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     //getProductUtils();
//     return Container(
//       child: CarouselSlider(
//         items: pdescriptions.map((item) => Container(
//           margin: EdgeInsets.only(left: 36, right: 36),
//           // padding: EdgeInsets.only(left: 36, right: 36),
//           child: Stack(
//             children: [
              
//               Container(
//                 //margin: EdgeInsets.only(left: 36, right: 36),
//                 //padding: EdgeInsets.only(left: 36, right: 36),
//                 height: 220,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.16),
//                       spreadRadius: 5,
//                       blurRadius: 6,
//                       offset: Offset(0, 3), // changes position of shadow
//                     )
//                   ] 
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 20, left: 20),
//                 child: Text(item),
//               ),
//             ],
//           ),
//         )).toList(),
//         carouselController: carouselController,
//         options: CarouselOptions(
//           // scrollPhysics: BouncingScrollPhysics(),
//           // scrollDirection: axisDirectionToAxis(x),
//           // autoPlay: true,
//           //height: double.infinity,
//           //viewportFraction: 1,
//           // enlargeCenterPage: false,
//           // aspectRatio: 1,
//           viewportFraction: 1,
//           onPageChanged: (index, reason) {
//             setState(() {
//               currentIndex = index;
//             });
//           },
//         )   
//       ),
      
//     );
//     //Positioned(child: child)
//   }
// }