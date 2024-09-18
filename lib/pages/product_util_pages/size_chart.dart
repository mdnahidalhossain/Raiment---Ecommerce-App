import 'package:flutter/material.dart';

class SizeChart extends StatelessWidget {
  const SizeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 36, right: 36),
      height: 150,
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
    );
  }
}