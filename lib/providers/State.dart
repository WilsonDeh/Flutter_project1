import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:ui_app/models/Food.dart';


class SquareState extends ChangeNotifier{
  
  
  Color color = Colors.black;
  set squarecolor(Color newColor){
    color = newColor;
    notifyListeners();
  }
  Color get squarecolor => color;



  //slider values
  double value = 0.5;
  set slidervalue(newValue){
    value = newValue;
    notifyListeners();
  }
  double get slidervalue => value;

  //color shade
  // int colorshade = 500;
  // set colorShade(newValue){
  //   value = newValue;
  //   notifyListeners();
  // }
  // int get colorShade => colorshade;
}

class CartState with ChangeNotifier{
  List<Food> _items=[];
  set items(newItem){
    _items.add(newItem);
    notifyListeners();   
  }

  List<Food> get items => _items;
}