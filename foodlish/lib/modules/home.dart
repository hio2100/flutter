import 'package:flutter/material.dart';
import 'package:foodlish/widgets/card1.dart';
import 'package:foodlish/widgets/card2.dart';
import 'package:foodlish/widgets/card3.dart';
import 'package:foodlish/widgets/card4.dart';
import 'package:foodlish/widgets/card5.dart';
import 'package:foodlish/widgets/card6.dart';
import 'package:foodlish/widgets/author.dart';


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
    Author(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CODER ',
          style: TextStyle(color: Colors.amberAccent,),
        ),
      ),
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amberAccent,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });

        },
        items: const [
          BottomNavigationBarItem(

            icon:Icon(Icons.account_circle_rounded),
            label: 'MINE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree),
            label: 'المناقصات',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_tree),
            label: ' CONVERTER',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_tree),
            label: 'CODES',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_tree),
            label: 'about us',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_tree),
            label: 'THANKS',
          ),
        ],
      ),
    );
  }
}
