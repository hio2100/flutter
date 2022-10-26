import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = "";
  final String title = "  ";
  final String description = "";
  final String cheif = "...";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 50.5,

              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline1,
              ),

            ),
            Positioned(
              top: 100.0,
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.headline3,
              ),
            ),
            Positioned(
              bottom: 30.0,
              right: 0.0,
              child: Text(
                cheif,
                style: FooderlichTheme.lightTextTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
