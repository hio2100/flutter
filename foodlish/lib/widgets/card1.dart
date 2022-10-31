import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = "";
  final String title = " PRIVATE APP ,, NOT FOR PUBLIC USE ";
  final String description = "PRIVATE APP ,, NOT FOR PUBLIC USE";
  final String cheif = ".PRIVATE APP ,, NOT FOR PUBLIC USE..";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
    //    padding: EdgeInsets.all(0.0),
        constraints: const BoxConstraints.expand(
          width: 600,
          height: 600,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
          filterQuality: FilterQuality.high,

            image: AssetImage('assets/mag1.jpg'),
            fit: BoxFit.fitHeight,
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

                style:  GoogleFonts.acme(textStyle: Theme.of(context).textTheme.headline6),
              ),

            ),
            Positioned(
              top: 20.0,
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
