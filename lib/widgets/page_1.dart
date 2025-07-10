import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 400,
            width: 400,
            child: Image.asset('assets/images/page1.png'),
          ),
          Text(
            "Your Journey,\n Perfectly Planned",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Effortlessly create and organize your\n dream trip. Start exploring now!",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
