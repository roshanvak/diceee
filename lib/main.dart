import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent[400],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
  
}

class _DicePageState extends State<DicePage> {
  @override
  var leftDice=1;
  var rightDice=1;
  Widget build(BuildContext context) {
    
    return Center(
      child:  Row(
      children: <Widget>[
       Expanded(
         child: FlatButton(
           onPressed: () {
             
             setState(() {
               leftDice=Random().nextInt(6)+1;
               rightDice=Random().nextInt(6)+1;
             });

           },
           child: Image.asset('images/dice$leftDice.png'),
         ),
          
        
        ),
         Expanded(
         child: FlatButton(
           onPressed: (){
             setState(() {
               rightDice=Random().nextInt(6)+1;
               leftDice=Random().nextInt(6)+1;
             });
           },
           child: Image.asset('images/dice$rightDice.png'),
         )
          
        
        ),

      ],
    ),
    );
  }
}

