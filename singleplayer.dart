import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'game_button.dart';
import 'startpage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final title = 'Grid List';
  int xScore = 0;
  int oScore = 0;
  int filledBoxes = 0;

  var player1 = [];
  var player2 = [];
  String gamestr = 'Play your Turn';

  List listButton = <GameButton>[
    new GameButton(1),
    new GameButton(2),
    new GameButton(3),
    new GameButton(4),
    new GameButton(5),
    new GameButton(6),
    new GameButton(7),
    new GameButton(8),
    new GameButton(9)
  ];

  void reset() {
    for (int i = 0; i < 9; i++) {
      listButton[i].str = '';
      listButton[i].enabled = true;
      listButton[i].clr = Colors.deepPurple[900];
    }
    player1 = [];
    player2 = [];
    gamestr = "Play your turn";
  }

  bool checkWinner(var player) {
    if (player.contains(0) && player.contains(1) && player.contains(2))  return true;
    if (player.contains(3) && player.contains(4) && player.contains(5)) return true;
    if (player.contains(6) && player.contains(7) && player.contains(8)) return true;
    if (player.contains(0) && player.contains(3) && player.contains(6)) return true;
    if (player.contains(1) && player.contains(4) && player.contains(7)) return true;
    if (player.contains(2) && player.contains(5) && player.contains(8)) return true;
    if (player.contains(0) && player.contains(4) && player.contains(8)) return true;
    if (player.contains(2) && player.contains(4) && player.contains(6)) return true;

    return false;
  }

  void playGame(int index) {
    // player 1
    if (listButton[index].enabled) {
      listButton[index].str = 'X';
      listButton[index].enabled = false;
      listButton[index].clr = Colors.deepPurple[900];
      player1.add(index);
    }

    if (checkWinner(player1)) {
      for (int i = 0; i < 9; i++) {
        listButton[i].enabled = false;
        listButton[i].clr = Colors.deepPurple[900];
      }

      gamestr = "X is Winner 🥳 !!!";
      xScore++;
      return;
    }

    // player 2
    var allPlayedButtons = new List.from(player1)..addAll(player2);
    int max = 9;
    var random = Random().nextInt(max) + 1;
    while (allPlayedButtons.contains(random)) {
      random = Random().nextInt(max) + 1;
    }
    for (int i = 0; i < 9; i++) {
      if (!allPlayedButtons.contains(random)) {
        listButton[random].str = 'O';
        listButton[random].enabled = false;
        listButton[random].clr = Colors.deepPurple[900];
        player2.add(random);
        break;
      }
    }

    if (checkWinner(player2)) {
      for (int i = 0; i < 9; i++) {
        listButton[i].enabled = false;
        listButton[i].clr = Colors.deepPurple[900];
      }

      gamestr = "O is Winner 🥳 !!!";
      oScore++;
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurple[900],
          body: Column(children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Player X',
                            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,fontFamily: 'Lobster', color: Colors.amber[50]),
                          ),
                          Text(
                            xScore.toString(),
                            style: TextStyle(fontSize: 21, color: Colors.amber[50]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Player O', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,fontFamily: 'Lobster', color: Colors.amber[50])),
                          Text(
                            oScore.toString(),
                            style: TextStyle(fontSize: 21, color: Colors.amber[50]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: GridView.builder(
                    padding: const EdgeInsets.all(7.0),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.0, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return new RaisedButton(
                        padding: const EdgeInsets.all(2.0),
                        child: new Text(
                          listButton[index].str,
                          style: new TextStyle(color: Colors.amber[50], fontSize: 60.0),
                        ),
                        color: listButton[index].clr,
                        disabledColor: Colors.deepPurple[900],
                        onPressed: () {
                          setState(() {
                            if (listButton[index].enabled) {
                              playGame(index);
                            }
                          });
                        },
                      );
                    })),
            Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.indigo[50],
                        textColor: Colors.black,
                        onPressed: (){Navigator.push(context,
                          CupertinoPageRoute(
                            builder: (context) => StartPage()));

                                 },

                          child: Text("HOME"),
                      ),
                    ],
                  ),
                ))
          ]),
          floatingActionButton: FloatingActionButton(
            child: Text("reset"),
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                reset();
              });
            },
          ),



        ));
  }
}
