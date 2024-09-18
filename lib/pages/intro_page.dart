import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset(
              'lib/images/Logo-01.png', height: 160,
            ),
      
            const SizedBox(height: 20,),
      
            const Text(
              'Just Get It',
              style: TextStyle(
                //fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            SizedBox(height: 40,),

            GestureDetector(
              onTap:() => Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => HomePage(),
                )
              ),
              child: Container(
                height: 40,
                width: 150,
                
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 38, 38, 38),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      //fontWeight: 
                    ),
                  ),
                ),
              ),
            )
      
      
            //title
          ],
        ),
      ),
    );
  }
}