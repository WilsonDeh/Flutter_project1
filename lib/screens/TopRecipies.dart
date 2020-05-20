import 'package:flutter/material.dart';
import 'package:ui_app/models/Food.dart';

class TopRecipies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //top searches
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text("Top Recipies", style: TextStyle(fontSize: 30)),
          ),

          SizedBox(height: 20,),

          //vegan - low sodium - under 500 row
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 25,
                      width: 70,
                      child: Center(child: Text("Vegan")),
                    ),
                
                
                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 25,
                      width: 100,
                      child: Center(child: Text("Low Sodium")),
                    ),

                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 25,
                      width: 120,
                      child: Center(child: Text("Under 500 Cal")),
                    ),
                    
              ],),
          ),

          SizedBox(height: 20,),

          //listview of food images & servings
          Expanded(
          
            child: ListView.builder(
              itemCount: Food_Collection.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left:10.0, right: 10.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            //borderRadius: BorderRadius.circular(20),
                            image: AssetImage(Food_Collection[index].image),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),

                      Text(Food_Collection[index].name, 
                      style: TextStyle(
                        fontSize:20,
                        ),
                      ),

                      Text(Food_Collection[index].servings, 
                      style: TextStyle(
                        fontSize:15,
                        ),
                      ),

                      SizedBox(height: 30)
                    ],
                  ),
                );
              }
              ),
          )

        ],
      ),
    );
  }
}