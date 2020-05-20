import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/providers/State.dart';
import 'package:ui_app/widgets/slidebutton.dart';

class SquareScreen extends StatefulWidget {
  @override
  _SquareScreenState createState() => _SquareScreenState();
}

class _SquareScreenState extends State<SquareScreen> with SingleTickerProviderStateMixin{
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000)
      )..forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<SquareState>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            //square
            InkWell(
              onTap: (){Navigator.pushNamed(context, "/animationscreen");},
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Provider.of<SquareState>(context).squarecolor,
                  borderRadius: BorderRadius.circular(state.slidervalue*100),
                )
              ),
            ),

            SizedBox(height: 50),

            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

              Button(buttoncolor: Colors.red, text: "Red",),
              Button(buttoncolor: Colors.green, text: "Green",),
              Button(buttoncolor: Colors.purple, text: "Purple",),
            
              ],
            ),


            Slider(
              value: Provider.of<SquareState>(context).slidervalue,
              onChanged: (newValue){
                Provider.of<SquareState>(context, listen: false).slidervalue = newValue;
  
              },
              inactiveColor: Provider.of<SquareState>(context).squarecolor,
              activeColor: Provider.of<SquareState>(context).squarecolor,
            ),

            SizedBox(height: 30),

            // Consumer<SquareState>(
            //   builder: (context, schedule, child)=> Container(
            //     height: 200,
            //     width: 200,
            //     color: schedule.squarecolor,
            //     child: Align(
            //       alignment: Alignment(0.7, 0.5),
                  
            //       child: Icon(Icons.shopping_cart)
            //     ),
                
                
            //   ),
              
            // ),

            // AnimatedBuilder(
            //   animation: _animationController, 
            //   builder: (context,__){
            //     return Container(
            //       height: 200,
            //       width: 200,
            //       color: Colors.red,
            //       child: Align(
            //       alignment: Alignment(_animationController.value, _animationController.value),
                  
            //       child: Icon(Icons.shopping_cart)
            //     ),
            //     );
            //   }
               
            // ),

           

            

          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  String text;
  Color buttoncolor;
  
  Button({this.text, this.buttoncolor});
  

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<SquareState>(context, listen: false);
    return RaisedButton(
      onPressed: (){
        state.squarecolor = buttoncolor;
      },
      child: Text(text),
      
    );
  }
}