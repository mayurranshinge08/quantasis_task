import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final bool light;
  const Page3({super.key, required this.light});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: 400,
              width: 400,
              child: Image.asset('assets/images/page3.png'),
            ),
            Text(
              "Stay Updated\n With Top Places",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: widget.light ? Colors.black : Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Find trending destinations and must-see attractions,\n all tailored to enchance your travel plains. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.light ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
