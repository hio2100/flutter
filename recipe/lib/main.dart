import 'package:flutter/material.dart';

import 'models/home.dart';

void main() {
  runApp(RecipeApp());
}


class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Recipe app",
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,


      ),
      home: HomePage(),
    );
  }
}
