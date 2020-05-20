import 'package:flutter/material.dart';
import 'package:ui_app/screens2/AnimationScreen.dart';

class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/banana.jpg"),
            )
          ),
          

          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(height: 100,color: Colors.red,),
                Container(height: 100,color: Colors.orange,),
                Container(height: 100,color: Colors.yellow,),
                Container(height: 100,color: Colors.green,),
                Container(height: 100,color: Colors.blue,),
                Container(height: 100,color: Colors.indigo,),
                Container(height: 100,color: Colors.purple,),      

              ],
              ),
          ),
          //AnimationScreen(image: AssetImage("images/donutcartoon.png")),
          //Image.asset("images/paelo.jpg")
          
          // Container(height: 200,color: Colors.green,),
          // Container(height: 200,color: Colors.blue,),
        ]
      )
    );
  }
}

