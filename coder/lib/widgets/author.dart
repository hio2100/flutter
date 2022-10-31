import 'dart:convert';

import 'package:flutter/material.dart';
import 'card6.dart';

class Author extends StatefulWidget {
   Author({Key? key}) : super(key: key);

  @override
  State<Author> createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
   Icon ahmed =  Icon(Icons.favorite_outline);
   int abc=0;
@override

  @override
  Widget build(BuildContext context) {
    return Container(


      //  padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(

            children: [

              Card6(
                imageradious: 150,
              ),

            ],
          ),
          IconButton(
              onPressed: () {
abc++;

                setState(() {
                  if (abc.isEven == true  ){
                    ahmed=Icon(Icons.favorite);

                  }else{
                    ahmed=Icon(Icons.favorite_outline);


                  }

                });
                print ("ahmed");
              },
              iconSize: 90,
              icon: ahmed )
        ],
      ),
    );
  }
}
