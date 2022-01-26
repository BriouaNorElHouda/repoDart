import 'package:flutter/material.dart';
void main(){
  runApp(AddOne());
}

class AddOne extends StatefulWidget {
  @override
  _AddOneState createState() => _AddOneState();
}

class _AddOneState extends State<AddOne> {
  int i=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add One"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[600],
        ),
        body: Center(
          child: Text(
            '$i',
            style: TextStyle(
              color: Colors.deepPurple[600],
              fontSize: 40.0,
              fontFamily: "HachiMaruPop",
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              i +=1;
            });


          },
          child: Icon(Icons.add),
          backgroundColor: Colors.deepPurple[800],
        ),
      ),
    );
  }
}
