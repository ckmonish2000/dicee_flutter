import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Diceapp(),
      ),
    ),
  );
}

class Diceapp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   
  var  _image2= 3;
  left() {
  print("left");
  }

  right() {
     print("right");
  }
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: left(),
              child: Image.asset("images/dice$_image2.png"),
            ),
          ),
          Expanded(
              child: FlatButton(
            child: Image.asset("images/dice$_image2.png"),
            onPressed: right(),
          ))
        ],
      ),
    );
  }
}
