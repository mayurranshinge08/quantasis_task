import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final bool light;
  const Page2({super.key, required this.light});
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            child: Image.asset('assets/images/page2.png'),
          ),
          Text(
            "Discover\n Friends Nearby",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: widget.light ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "See where ypur friends are travlling and\n explore the world together.",
            textAlign: TextAlign.center,
            style: TextStyle(color: widget.light ? Colors.black : Colors.white),
          ),
        ],
      ),
    );
  }
}
