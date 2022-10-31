import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

class Card5 extends StatelessWidget {
  const Card5({Key? key}) : super(key: key);

  final String category = "";
  final String title = "  ";
  final String description = "";
  final String cheif = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aaaa"),
      ),
      body: PageView(
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            color: Colors.greenAccent,
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(35),
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.1),
            child: Text("HOPE THIS HELP",
                style: TextStyle(fontSize: 25,color:Colors.black,fontStyle: FontStyle.italic)),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.cyanAccent,
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(35),
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.1),
            child: Text("AMK",
                style: TextStyle(fontSize: 25)),
          ),
      Container(
      padding: EdgeInsets.all(30),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(children: <Widget>[
                  Icon(
                      Icons.account_circle,
                      size: 70
                  ),
                  Text('LASIX250@GMAIL.COM'),
                ]),


              ]
          ),
      ),
        ],
        )

    );
  }
}
