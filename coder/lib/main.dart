import 'package:flutter/material.dart';
import 'package:coder/modules/home.dart';
import 'fooderlich_theme.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  final theme = FooderlichTheme.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODES',
      theme: theme,
      home:const Home(),
    );
  }
}
