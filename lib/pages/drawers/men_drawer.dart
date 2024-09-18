import 'package:ecommerce_app/pages/clothing_page.dart';
import 'package:flutter/material.dart';

class MenDrawer extends StatelessWidget {
  const MenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // backgroundColor: Color.fromARGB(255, 243, 243, 243),
      //width: 500,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 243, 243, 243),
              automaticallyImplyLeading: false,
              elevation: 0,
              actions: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.close,
                    color: const Color.fromARGB(255, 38, 38, 38),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              padding: EdgeInsets.only(left: 40),
              child: const Row(
                children: [
                  Text(
                    'MEN',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Divider(color: Color.fromARGB(255, 38, 38, 38).withOpacity(0.8)),

            SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClothingPage(),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Stack(
                  children: [
                    Container(
                      width: 320,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'lib/images/clothing.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 320,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 38, 38, 38)
                            .withOpacity(0.5),
                      ),
                    ),
                    Container(
                        child: const ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(top: 110),
                        child: Text(
                          'Clothing',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 275),
                      child: Container(
                        width: 40,
                        child: Image.asset(
                          'lib/images/icons8-right.png',
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Stack(
                children: [
                  Container(
                    width: 320,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/images/shoes.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 38, 38, 38)
                          .withOpacity(0.5),
                    ),
                  ),
                  Container(
                      child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 110),
                      child: Text(
                        'Shoes',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 275),
                    child: Container(
                      width: 40,
                      child: Image.asset(
                        'lib/images/icons8-right.png',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Stack(
                children: [
                  Container(
                    width: 320,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/images/accessories.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 38, 38, 38)
                          .withOpacity(0.5),
                    ),
                  ),
                  Container(
                      child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 110),
                      child: Text(
                        'Accessories',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 275),
                    child: Container(
                      width: 40,
                      child: Image.asset(
                        'lib/images/icons8-right.png',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
