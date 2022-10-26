import 'package:flutter/material.dart';
import 'package:coder/widgets/card1.dart';
import 'package:coder/widgets/card2.dart';
import 'package:coder/widgets/card3.dart';
import 'package:coder/widgets/card4.dart';
import 'package:coder/widgets/card5.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex=0;
  static List<Widget> pages=[
    Card1(),
    Card2(),
    Card3(),
    Card4(),
    Card5(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CODE SEARCHER a',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyanAccent,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });

        },
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.wallet_giftcard),
            label: 'MINE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'المناقصات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: ' CONVERTER',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'CODES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'testr',
          ),
        ],
      ),
    );
  }
}
