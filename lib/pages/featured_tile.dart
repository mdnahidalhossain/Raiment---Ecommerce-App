import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/featured_products.dart';

class FeaturedTile extends StatelessWidget {
  //FeaturedTile({super.key});

  List<FeaturedProducts> fProducts = [];

  void getFProducts() {
    fProducts = FeaturedProducts.getFProducts();
  }

  @override
  Widget build(BuildContext context) {
    getFProducts();
    return Padding(
      padding: const EdgeInsets.only(left: 36, right: 36),
      child: Container(
        // width: 292,
        // //height: 500,
        // padding: const EdgeInsets.only(left: 36),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.44,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            // return ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Container(
            //     //height: 300,
            //     decoration: BoxDecoration(
            //       //border: Border.all(width: 3.0),
            //       color: Colors.white,
            //       image: DecorationImage(
            //         image:AssetImage(
            //           fProducts[index].fImagePath,
            //           ))
            //     ),

            //   ),
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => fProducts[index].froute,)
                );
              },

              child: Stack(
                children: [
                  Container(
                    //height: 600,
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

                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                        child: Container(
                          //width: 146,
                        
                          child: Image.asset(
                            fProducts[index].fImagePath,
                            height: 220,
                            fit: BoxFit.cover,
                            
                          ),
                        ),
                      ),

                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(top: 5),
                          width: 142,
                          child: Text(
                            fProducts[index].fName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(fProducts[index].fBrand),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          fProducts[index].fPrice,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          fProducts[index].fStatus,
                        ),
                      )
                    ],
                  )

                ],
              )
            );
          },
        ),
      ),
    );
  }
}
