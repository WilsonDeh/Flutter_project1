import 'package:flutter/material.dart';
import 'package:ui_app/models/Food.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/providers/State.dart';

class FoodCart extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<CartState>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(state.items[index].name.toString()),
                trailing: IconButton(
                  icon: Icon(Icons.delete), 
                  onPressed: (){state.items.remove(state.items[index]);}
                  ),
              );
            }
            ), 
    );
  }
}