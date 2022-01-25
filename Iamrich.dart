
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {

  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar:AppBar(
            title: Text('I AM RICH'),
            backgroundColor: Colors.red,
          ) ,
  body: Center(
  child: Image(
  image:AssetImage('images/diamond.png'),

  )
  )

        )));


}
