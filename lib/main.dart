import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Diceapp(),
      ),
    ),
  );
}

class Diceapp extends StatefulWidget {
  @override
  _DiceappState createState() => _DiceappState();
}

class _DiceappState extends State<Diceapp> {
  var image = 1;
  var _image2 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  var rand = Random().nextInt(6) + 1;
                  print(rand);
                  setState(() {
                    image = rand;
                  });
                  print("left");
                },
                child: Image.asset("images/dice$image.png"),
              ),
            ),
            Expanded(
                child: FlatButton(
              child: Image.asset("images/dice$_image2.png"),
              onPressed: () {
                var rand = Random().nextInt(6) + 1;
                setState(() {
                  _image2 = rand;
                });

                print("right");
              },
            ))
          ],
        ),
      ),
    );
  }
}
