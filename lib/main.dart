import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;

    });

  }

  @override
  Widget build(BuildContext context) {
    //var leftDiceNumber = 1;
    return Center(
      child:Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    changeDiceFace();
                    print('LDiceNumber = $leftDiceNumber');

                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),

          Expanded(
            child: FlatButton(
                onPressed: (){
                    changeDiceFace();
                    print('RDiceNumber = $rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );

  }
}

/*
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 1;
    return Center(
      child:Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    print('Left Button is pressed');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),

          Expanded(
              child: FlatButton(
                  onPressed: (){
                    print('Right Button is pressed');
                  },
                  child: Image.asset('images/dice2.png')),
              ),
        ],
      ),
    );

  }
}

 */
