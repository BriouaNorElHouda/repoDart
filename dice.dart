import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(AddOne());
}


class AddOne extends StatefulWidget {
  @override
  _AddOneState createState() => _AddOneState();
}

class _AddOneState extends State<AddOne> {
  int i=1;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Dice world"),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          body: Center(
            child:TextButton(


              child: Image(
                image:AssetImage('images/dice'+i.toString()+'.png'),



              ),
              onPressed: () {
                setState(() {
                  i= Random().nextInt(6)+1;
                });
              },
            ),
          ),
        ) );



  }
}

