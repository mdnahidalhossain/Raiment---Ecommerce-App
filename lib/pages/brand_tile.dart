import 'package:ecommerce_app/models/brand_categories.dart';
import 'package:flutter/material.dart';

class BrandTile extends StatelessWidget {
  List<BrandCategories> categories = [];

  void getCategories() {
    categories = BrandCategories.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    getCategories();
    return Container(
          padding: EdgeInsets.only(left: 36),
          //margin: EdgeInsets.only(left: 36),
          height: 80,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            // physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(right: 20),
            separatorBuilder: (context, index) => SizedBox(width: 15),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => categories[index].route));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 146,
                      // height: 80,
                      color: Colors.white,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          categories[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Container(
                      width: 146,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 38, 38, 38)
                              .withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),

                    Container(
                      //padding: EdgeInsets.only(top: 50),
                      // alignment: Alignment.topCenter,

                      width: 80,
                      //color: Colors.amber,
                      child: Image.asset(
                        categories[index].iconPath,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
    );
  }
}
