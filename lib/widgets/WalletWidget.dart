import 'package:flutter/material.dart';
import 'package:ui_app/widgets/shapes.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("xxxxx",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),

            Container(
              width: 100,
              //color: Colors.redAccent,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange,
              ),
            ),

            Icon(Icons.accessibility_new)
          ],
        ),
      
    );
  }
}