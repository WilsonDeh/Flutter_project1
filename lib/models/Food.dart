import 'package:flutter/material.dart';

var Food_Collection = [Banana, Fruitsalad, Paleo, Romansalad];
class Food {
  String name;
  String servings;
  String image;
  String type;
  Map<String, int> Nut_facts;
  String summary;
  Map<String, int> perc_daily_value;

  Food({this.name, this.servings, this.image, this.type, this.Nut_facts, this.summary, this.perc_daily_value});

  
}

var Banana = Food(
  name: "Banana",
  servings: "serves 2 people",
  image: 'images/banana.jpg',
  type: "Fruit",
  Nut_facts: {
    'Cal': 25,
    'Carbs': 22,
    'Protein': 11,
    'Sugar': 2
  },
  summary: "Shabby chic raclette direct trade four jean shorts pug selvage hexagon ramps. Austin enamel pin chilwave, vice artisan hella crucifix h",
  perc_daily_value: {
    "total fat": 10,
    "Saturated fat": 5,
    "polyunsaturated fat": 9
  }
  
  );

var Fruitsalad = Food(
  name: "Fruit Salad",
  servings: "serves 5 people",
  image: 'images/fruitsalad.jpg',
  type: "Fruit",
  Nut_facts: {
    'Carbs': 27,
    'Cal': 26,
    'Protein': 1,
    'Sugar': 2
  },
  summary: "Shabby chic raclette direct trade four jean shorts pug selvage hexagon ramps. Austin enamel pin chilwave, vice artisan hella crucifix h",
  perc_daily_value: {
    "total fat": 10,
    "Saturated fat": 5,
    "polyunsaturated fat": 9
  }
  
  );


var Paleo = Food(
  name: "Paleo",
  servings: "serves 2 people",
  image: 'images/paelo.jpg',
  type: "salad",
  Nut_facts: {
    'Carbs': 50,
    'Cal': 62,
    'Protein': 01,
    'Sugar': 20
  },
  summary: "Shabby chic raclette direct trade four jean shorts pug selvage hexagon ramps. Austin enamel pin chilwave, vice artisan hella crucifix h",
  perc_daily_value: {
    "total fat": 10,
    "Saturated fat": 5,
    "polyunsaturated fat": 9
  }
  
  );

  var Romansalad = Food(
  name: "Roman Salad",
  servings: "serves 8 people",
  image: 'images/romansalad.jpg',
  type: "salad",
  Nut_facts: {
    'Carbs': 25,
    'Cal': 22,
    'Protein': 11,
    'Sugar': 2
  },
  summary: "Shabby chic raclette direct trade four jean shorts pug selvage hexagon ramps. Austin enamel pin chilwave, vice artisan hella crucifix h",
  perc_daily_value: {
    "total fat": 10,
    "Saturated fat": 5,
    "polyunsaturated fat": 9
  }
  
  );