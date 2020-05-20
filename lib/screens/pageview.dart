import 'package:flutter/material.dart';
import 'package:ui_app/screens/Sliverpage.dart';
import 'package:ui_app/screens2/AnimationScreen.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController _controller = PageController(
      initialPage: 6,
    );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        SliverPage(),
        AnimationScreen(image: AssetImage("images/donutcartoon.png")),
        AnimationScreen(image: AssetImage("images/donut1.png")),
        AnimationScreen(image: AssetImage("images/donutcartoon.png")),
        AnimationScreen(image: AssetImage("images/donut1.png")),
        AnimationScreen(image: AssetImage("images/donutcartoon.png")),
        AnimationScreen(image: AssetImage("images/donut1.png")),
      ]
    );
  }
}