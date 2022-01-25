import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'home_pages.dart';
import 'home_pagem.dart';

void main() {
  runApp(StartPage());
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool shouldPop = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return shouldPop;
        },

        child: Scaffold(
          backgroundColor: Colors.purple[100],

          body: SafeArea(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text('Tic ',  style:TextStyle(
                    fontSize:70.0,
                    fontFamily: 'Lobster',
                    color: Colors.deepPurple[900],

                  ),),
                  Text(' Tac',  style:TextStyle(
                    fontSize:70.0,
                    fontFamily: 'Lobster',
                    color: Colors.deepPurple[900],

                  ),),
                  Text(' Toe',  style:TextStyle(
                    fontSize:70.0,
                    fontFamily: 'Lobster',
                    color: Colors.deepPurple[900],

                  ),),
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('images/xx.jpg'),
                  ),






                  Container(

                    margin:EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                    padding:EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    color: Colors.deepPurple[900],
                    child: Row(
                      children: [
                        Icon(
                          Icons.person ,
                          color: Colors.amber[50],
                        ),
                        SizedBox(
                          height: 30,
                          width: 25.0,
                        ),


                    TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => HomePage()));
                          },
                        child: Container(
                          color: Colors.deepPurple[900],
                          child: Text(
                            'Single Player',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Lobster',
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[50],
                            ),
                          ),
                        ),

                    )]
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.symmetric(horizontal: 35,),
                    padding:EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    color: Colors.deepPurple[900],
                    child: Row(
                      children: [
                        Icon(
                          Icons.people ,
                          color: Colors.amber[50],
                        ),
                        SizedBox(
                          height: 30,
                          width: 25.0,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {

                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => HometoPage()));

    },
                          child: Container(
                            color: Colors.deepPurple[900],
                            child: Text(
                              'Multi Player',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Lobster',
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[50],
                              ),
                            ),
                          ),

                        )]
                    ),
                  ),



                ]
            ),

          ),
        )
    );
  }

}

