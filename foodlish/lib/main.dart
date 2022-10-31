import 'package:flutter/material.dart';
import 'package:foodlish/modules/home.dart';
import 'fooderlich_theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  final theme = FooderlichTheme.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODES',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark

        ,
        primaryColor: Colors.amberAccent[800],

        // Define the default font family.
        fontFamily: 'Roboto',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(

          headline1: TextStyle(fontSize: 10.0, ),
          headline6: TextStyle(fontSize: 20.0, ),
          bodyText2: TextStyle(fontSize: 14.0,),
        ),
      ),
      home:const Home(),
    );
  }
}
