import 'package:flutter/cupertino.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "See where ypur friends are travlling and\n explore the world together.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
