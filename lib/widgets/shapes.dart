import 'package:flutter/material.dart';



class Circle extends StatelessWidget {
  const Circle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
          opacity: 0.8,
          child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[400],
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.grey[200],
              Colors.grey[300],
              Colors.grey[500],
              Colors.grey[600],
            ]
            ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(-6, -6),
              color: Colors.grey[600]
                    )
                  ],
                    ),),
    );
  }
}

class ThinLine extends StatelessWidget {
  const ThinLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: 400,
      color: Colors.grey[300],
    );
  }
}

class OvalBox extends StatelessWidget {
  final String content;
  OvalBox(this.content);


  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 8, right: 8),
      height: 30,
      width: 100,
      child: Center(
        child: Text(content,
          style: TextStyle(fontSize:15, fontWeight: FontWeight.w700, color: _fontColorLight),
          ),
        ),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}

//properties
Color _fontColorLight = Colors.blue[900];
Color _fontColorDark = Colors.blue[920];
FontWeight _fontWeight = FontWeight.w900;
double _leftrightpadding = 10;