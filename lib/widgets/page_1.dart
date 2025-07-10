import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  final bool light;
  const Page1({super.key, required this.light});
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: widget.light ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Effortlessly create and organize your\n dream trip. Start exploring now!",
            textAlign: TextAlign.center,
            style: TextStyle(color: widget.light ? Colors.black : Colors.white),
          ),
        ],
      ),
    );
  }
}
