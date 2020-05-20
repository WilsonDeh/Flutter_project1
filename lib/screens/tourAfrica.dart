import 'package:flutter/material.dart';

class tourAfrica extends StatelessWidget {
  List <BottomNavigationBarItem>_bottomNavigationBarList = [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("home"),),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("search")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("favorite")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("person")),
         ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar:BottomNavigationBar(
        items: _bottomNavigationBarList,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,),

      body: Stack(
        children: <Widget>[
          //Opacity(opacity: 0.5,child: Image.asset("images/giraffe1.png")),
          Padding(
            padding: const EdgeInsets.only(top:35.0, left: 10, right: 10),
            child: TheColumn(),
      ),
        ],
        )
    );
  }
}

class TheColumn extends StatelessWidget {
  const TheColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Row(
          children: <Widget>[
            SizedBox(width: 25,),
            Text("t", style: TextStyle(color: Colors.red, fontSize: 75),),
            Text("o", style: TextStyle(color: Colors.yellow, fontSize: 75),),
            Text("u", style: TextStyle(color: Colors.green, fontSize: 75),),
            Text("r", style: TextStyle(color: Colors.blue, fontSize: 75),),
            Text("A", style: TextStyle(color: Colors.brown, fontSize: 75),),
            Text("f", style: TextStyle(color: Colors.black, fontSize: 75),),
            Text("r", style: TextStyle(color: Colors.red, fontSize: 75),),
            Text("i", style: TextStyle(color: Colors.yellow, fontSize: 75),),
            Text("c", style: TextStyle(color: Colors.green, fontSize: 75),),
            Text("a", style: TextStyle(color: Colors.black, fontSize: 75),),
            
            
          ],
        )),
        Text("We're trying to find new destinations for you!",style: TextStyle(color: Colors.black, fontSize: 17),),
        SizedBox(height: 20),
        Text("Select Destination",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
        
        SizedBox(height: 20),
        SizedBox(
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Container(
                    
                    height: 370,
                    width: 250,
                    
                    decoration: BoxDecoration(
                       boxShadow: [
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,3),
                        blurRadius: 2
                      ),
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("images/nkrumah.jpg"),
                      fit: BoxFit.cover)
                       
                    ),
                  ),
                  Text("Accra",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                  Text("Ghana")
                ],
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 370,
                    width: 250,
                    
                    decoration: BoxDecoration(
                       boxShadow: [
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,3),
                        blurRadius: 2
                      ),
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("images/aburi.jpg"),
                      fit: BoxFit.cover)
                    ),
                  ),
                Text("Aburi", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                Text("Ghana")

                
                ],
              )
            ],
          ),
        )

      ],
    );
  }
}