import 'package:flutter/material.dart';
import 'package:ui_app/models/Food.dart';
import 'package:ui_app/screens/FoodInfo.dart';
import 'package:ui_app/widgets/shapes.dart';

class SavedItems extends StatelessWidget {
  Color _fontColorLight = Colors.blue[900];
  Color _fontColorDark = Colors.blue[920];
  FontWeight _fontWeight = FontWeight.w900;
  double _leftrightpadding = 10;
  
  List <BottomNavigationBarItem>_bottomNavigationBarList = [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("home"),),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("search")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("favorite")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("person")),
         ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarList,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,),
      body: Column(
        children:[
          Padding(
            padding: EdgeInsets.only(left: _leftrightpadding, right: _leftrightpadding, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Icon(Icons.arrow_back),
                Text("Saved Items", style: TextStyle(fontSize: 20, fontWeight: _fontWeight, color: _fontColorDark),),
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){Navigator.pushNamed(context, '/foodcart');})
              ]
            ),
          ),
        

          Padding(
            padding: EdgeInsets.only(left: _leftrightpadding, right: _leftrightpadding),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.only(left: 20, right:50),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search,color: Colors.orangeAccent, size: 30,),

                  SizedBox(width: 10),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Find in your saved items",
                      )
                    ),
                  ),
                ],
              ),
             //color: Colors.grey,
             
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: Food_Collection.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.all(_leftrightpadding),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodInfo(food: Food_Collection[index])
                            ),
                          );
                        },
                        
                         child: Row(
                           
                          children: <Widget>[
                            //SizedBox(height: 10),
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Food_Collection[index].image)
                                )
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: _leftrightpadding),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[

                                      Text(Food_Collection[index].name,
                                      style: TextStyle(fontSize: 20, fontWeight:_fontWeight),),

                                      // Text(Food_Collection[index].type,
                                      // style: TextStyle(fontSize: 20, fontWeight:_fontWeight),),

                                      // Text(Food_Collection[index].servings,
                                      // style: TextStyle(fontSize: 15, fontWeight:FontWeight.w500),),

                                    ],
                                  ),
                                  SizedBox(width: 45),
                                  //Icon(Icons.menu)
                                ],
                              ),
                            ),
                            
                            //SizedBox(width: 55),
                            
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      ThinLine(),
                    ],

                  ),
                );
              }
              )
          )
        ],
      ),
    );
  }
}

