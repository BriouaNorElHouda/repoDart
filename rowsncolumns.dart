import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(Home());
}

class Home extends StatelessWidget{

  Widget build(context){

    return MaterialApp(
      home: Scaffold (

        body: Column(

          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.green,
                  child: Text('A'),
                ),
              ],
            ),
            Row(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(35.0),
                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.yellow,
                  child: Text('B'),
                ),
              ],

            ),
            Row(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(35.0),

                ),
                Container(
                  padding: EdgeInsets.all(35.0),

                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.red,
                  child: Text('C'),
                ),
              ],
            ),
            Row(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(35.0),

                ),
                Container(
                  padding: EdgeInsets.all(35.0),

                ),
                Container(
                  padding: EdgeInsets.all(35.0),
                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.blue,
                  child: Text('D'),
                ),
              ],
            ),
          ],
        ),

      ),

    );
  }
