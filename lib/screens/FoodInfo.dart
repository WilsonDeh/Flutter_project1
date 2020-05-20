import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/models/Food.dart';
import 'package:ui_app/providers/State.dart';
import 'package:ui_app/widgets/shapes.dart';
import 'package:ui_app/widgets/slidebutton.dart';

class FoodInfo extends StatelessWidget {
  Food food;

  FoodInfo({this.food});
  

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<CartState>(context,listen: false);
    return Scaffold(
      body: ListView(
        children: [
          //food image,
          Stack(
            children: <Widget>[
            Container(
              height: 280,
              width: 600,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(this.food.image),
                fit: BoxFit.cover
                )
              ),
              
            ),

            Positioned(
              top: 30,
              left: 10,
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                          color: Colors.grey[900],
                          offset: Offset(0.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0
                    )
                  ],
                ),
                child: IconButton(
                  onPressed: (){Navigator.pop(context);},
                  icon: Icon(Icons.arrow_back_ios, size: 20,),
                ),
              )
            )


          ],),
          
          //row of food name, class and bookmark icon
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(this.food.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                    Text(this.food.type, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                  ]
                ),

                

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                  child: InkWell(
                    onTap: (){state.items.add(this.food);},
                    child: Center(child: Text("Buy"))
                    )
                ),
                
              
              ],
            ),
          ),


          //vegan low sodium fast
          Padding(
            padding: const EdgeInsets.only(left:20, right:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                OvalBox("vegan"),
                OvalBox("Low Sodium"),
                OvalBox("Fast")
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(this.food.summary,
                style: TextStyle(
                  fontSize: 15, 
                  fontWeight: FontWeight.w700, 
                  color: Colors.blue[900]
                ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("Nutritional Facts", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),),
                Text("Amount Per 100 grams", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SlideButton(figure: this.food.Nut_facts["Cal"], label: "Cal",),
                      SlideButton(figure: this.food.Nut_facts["Carbs"], label: "Carb",),
                      SlideButton(figure: this.food.Nut_facts["Protein"], label: "Protein",),
                      SlideButton(figure: this.food.Nut_facts["Sugar"], label: "Sugar",)
                    ],
                  ),
                )
              ]
            ),
          ),
        //food summary

        //nutritional facts
        ]
      ),
    );
  }
}

