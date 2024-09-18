import 'package:flutter/material.dart';

class SearchDrawer extends StatelessWidget {
  SearchDrawer({super.key});

  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(top: 65, left: 5),
      child: Container(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/images/icons8-left.png',
              width: 40,
            ),
    
            TextField(
              //controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search',
              ),
            ),
            Text('Seacrh')
          ],
        ),
      ),
    );
    
  }
}
