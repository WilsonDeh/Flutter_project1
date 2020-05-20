import 'package:flutter/material.dart';

class AnimationScreen extends StatelessWidget {
  
  final AssetImage image;
  AnimationScreen({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
              curve: Curves.linear,
              duration: Duration(milliseconds: 900),
              tween: Tween<double>(begin: -300, end: -170),
              builder: (_, double _offset, __){
                return Transform.translate(
                  offset: Offset(_offset, 0), 
                  child: AnimatedCircle(image: image,),
                );
              }
              
            ),
      ),
    );
  }
}

class AnimatedCircle extends StatelessWidget {
  final AssetImage image;
  
  const AnimatedCircle({
    Key key,
    this.image
  }) : super(key: key, );

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.linear,
      tween: Tween<double>(begin: 0, end: 1), 
      duration: Duration(milliseconds: 900), 
      builder: (context, double _angle, __){
        return Transform.rotate(
          angle: _angle,
          child: Container(decoration: BoxDecoration(image: DecorationImage(image: image) ), height: 1000, width: 1000,),
        );
      }
      );
  }
}

