import 'package:flutter/cupertino.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Find trending destinations and must-see attractions,\n all tailored to enchance your travel plains. ",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
