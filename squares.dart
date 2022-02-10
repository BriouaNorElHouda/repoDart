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
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Row(


              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(40.0),
                  color: Colors.blue,
                  child: Text('-1-'),
                ),
                
                Container(
                  padding: EdgeInsets.all(40.0),
                  color: Colors.green,
                  child: Text('-2-'),

                ),
              ],
            ),

            Row(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(40.0),
                  color: Colors.purple,
                  child: Text('-3-'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                  color: Colors.yellow,
                  child: Text('-4-'),
                ),
              ],

            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text ("click"),
          backgroundColor: Colors.blue, onPressed: () {  },
        ),
      ),

    );
  }

}
