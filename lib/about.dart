import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF27153E),
        appBar: AppBar(
          backgroundColor: Color(0xFF9899FB),
          title: Text("About Me"),
        ),
        body: aboutBody);
  }
}

Widget get aboutBody {
  return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'A Simple TicTacToe game made using ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              TextSpan(
                  text: 'Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('https://flutter.dev');
                    })
            ]),
          ),
          Container(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Developed by Hemant ,Shalini, Samriddhi, Nikita',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.code,color: Colors.white,),
                    InkWell(
                      child: Text(
                        '  Github: Hemant-appd',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onTap: () =>
                          {launch('https://github.com/Hemant-appd')},
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.email,color: Colors.white,),
                    Text(
                      '  hemantgoyal748@gmail.com',
                      style: TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ));
}
