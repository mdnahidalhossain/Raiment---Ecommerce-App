import 'package:flutter/material.dart';
//import 'package:ecommerce_app/pages/featured_pages/card_1.dart';

// class ProductDescription extends StatelessWidget {
//   const ProductDescription({super.key});

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

// class ProductUtils {
//   String text;
//   final Widget pDescription;

//   ProductUtils({
//     required this.text,
//     required this.pDescription
//   });

//   static List<ProductUtils> getProductUtils() {
//     List<ProductUtils> productUtils = [];

//     productUtils.add(ProductUtils(
//       text: "Product descriptions",
//       pDescription: Container(
//         margin: EdgeInsets.only(left: 36, right: 36),
//         height: 150,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.16),
//               spreadRadius: 5,
//               blurRadius: 6,
//               offset: Offset(0, 3), // changes position of shadow
//             )
//           ] 
//         ),
//       )
//     ));

//     productUtils.add(ProductUtils(
//       text: "Product Specification",
//       pDescription: Container(
//         margin: EdgeInsets.only(left: 36, right: 36),
//         height: 150,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.16),
//               spreadRadius: 5,
//               blurRadius: 6,
//               offset: Offset(0, 3), // changes position of shadow
//             )
//           ] 
//         ),
//       )
//     ));

//     return productUtils;
//   }
// }

// final List<Widget> pdescriptions = [
//   Container(
//     margin: EdgeInsets.only(left: 36, right: 36),
//         height: 150,
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 49, 31, 116),
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.16),
//               spreadRadius: 5,
//               blurRadius: 6,
//               offset: Offset(0, 3), // changes position of shadow
//             )
//           ] 
//         ),
//   ),
  
//   Container(
//     margin: EdgeInsets.only(left: 36, right: 36),
//         height: 150,
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 219, 56, 56),
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.16),
//               spreadRadius: 5,
//               blurRadius: 6,
//               offset: Offset(0, 3), // changes position of shadow
//             )
//           ] 
//         ),
//   ),
// ];

final List<String> card1_contents = [
  'Descritptions',
  'Specification',
  'Size Chart',
];

final List<String> card1_contents_names = [
  'Descritptions',
  'Specification',
  'Size Chart',
];


// class pTile {
//   String pDescription;
//   String pSpecification;
//   String PSizeChart;

//   pTile({
//     required this.pDescription,
//     required this.pSpecification,
//     required this.PSizeChart,
//   });

//   static List<pTile> getpTile() {
//     List<pTile> ptile = [];

//     ptile.add(pTile(
//       pDescription: 'Description',
//       pSpecification: 'Specification',
//       PSizeChart: 'Size Chart',
//     ));

//     // ptile.add(pTile(
//     //   pSpecification: 'Specification',

//     // ));

//     // ptile.add(pTile(
//     //   PSizeChart: 'Size Chart',
//     // ));

//     return ptile;
//   }
// }  