import 'package:flutter/material.dart';
import 'package:quantasis_task/widgets/page_1.dart';
import 'package:quantasis_task/widgets/page_2.dart';
import 'package:quantasis_task/widgets/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static bool light = false;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light ? Colors.green : Colors.grey,
      appBar: AppBar(
        backgroundColor: light ? Colors.green : Colors.grey,
        actions: [
          Switch(
            value: light,
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
            },
          ),
        ],

        title: Text(
          "WanderWise",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: light ? Colors.black : Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [Page1(), Page2(), Page3()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(200, 60), // width: 200, height: 60
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: TextStyle(fontSize: 20), // increase text size
              ),
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
