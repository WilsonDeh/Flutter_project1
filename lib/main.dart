import 'package:flutter/material.dart';
import 'package:ui_app/providers/State.dart';
import 'package:ui_app/screens/FoodCart.dart';
import 'package:ui_app/screens/FoodInfo.dart';
import 'package:ui_app/screens/SavedItems.dart';
import 'package:ui_app/screens/TopRecipies.dart';
import 'package:ui_app/screens/Sliverpage.dart';
import 'package:ui_app/screens/pageview.dart';
import 'package:ui_app/screens/square.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/screens/tourAfrica.dart';
import 'package:ui_app/screens2/AnimationScreen.dart';
//import 'package:google_fonts/google_fonts.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SquareState()),
          ChangeNotifierProvider(create: (context) => CartState()),
        ],
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: '/saveditems',
        routes: {
        '/tourafrica': (context)=> tourAfrica(),
        '/pageview': (context)=> PageViewScreen(),
        //'/animationscreen': (context)=> AnimationScreen(),
        '/foodcart': (context)=> FoodCart(),
        // '/globe': (context)=> Globe(),
        '/square': (context)=> SquareScreen(),  
        '/toprecipies': (context)=> TopRecipies(),
        '/saveditems': (context)=> SavedItems(),
        '/foodinfo': (context)=> FoodInfo(),
        }
      ),
    );
  }
  
}
