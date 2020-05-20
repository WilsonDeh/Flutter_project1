import 'package:flutter/material.dart';
import 'package:ui_app/widgets/shapes.dart';

class SlideButton extends StatefulWidget {
  final int figure;
  final String label;
  SlideButton({this.figure, this.label});


  @override
  _SlideButtonState createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {
  double circle_level = 40;
  void _animate(){
    setState(() {
      circle_level = -(circle_level);
      //print('circle_moved!!');
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(50)
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            top: 0,     
            right: 0,       
            left: 0,
            bottom: circle_level,
            child: Plane_Circle(
              figure: widget.figure, 
              label: widget.label, 
              onTapped: ()=> _animate(),
            ),
          ),
        ],
      ),
    );
  }
}

class Plane_Circle extends StatelessWidget {
  
  final int figure;
  final String label;
  Plane_Circle({this.figure, this.label, this.onTapped});

  VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: ()=> onTapped(),
          child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(this.figure.toString(),style: TextStyle(fontSize: 23)),
                Text(this.label, style: TextStyle(fontSize: 13))

              ],
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
      ),
    );
  }
}