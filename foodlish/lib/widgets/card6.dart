import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

class Card6 extends StatelessWidget {
  const Card6({Key? key, this.imageradious = 200.0}) : super(key: key);

  final double imageradious;


  // final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(

      backgroundImage: AssetImage("assets/mag1.jpg"),

      // backgroundColor: Colors.lime,
      radius: 150,

    );
  }
}
