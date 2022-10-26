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
          //  color: Colors.greenAccent,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/mag1.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
          Container(
            color: Colors.lime,
          ),
          Container(
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
