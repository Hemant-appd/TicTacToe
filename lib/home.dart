import 'package:flutter/material.dart';
import 'about.dart';
import 'game.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TicTacToe"),
        backgroundColor: Color(0xFF9899FB),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            tooltip: 'About',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [const Color(0xFFB3E5FC), const Color(0xFF2196F3)]
              ),
              image: DecorationImage(
              image: AssetImage('images/tictactoe.jpeg'),
              fit: BoxFit.fill,
              )
          ),
          //padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: 310,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            '  vs Bot  ',
                            style: TextStyle(
                                color: Colors.lightBlue[800], fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return GamePage(true);
                          }));
                        },
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'vs Friend',
                            style: TextStyle(
                                color: Colors.lightBlue[800], fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return GamePage(false);
                          }));
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
