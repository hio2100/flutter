import 'package:flutter/material.dart';
import 'package:recipe/models/recipe.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail(this.recipe, {Key? key}) : super(key: key);
  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _slidervalue = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Image(
                image: AssetImage(widget.recipe.image),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(widget.recipe.title),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                      '${widget.recipe.ingredients[index].quantity * _slidervalue}${widget
                          .recipe.ingredients[index].name}');
                },
                itemCount: widget.recipe.ingredients.length,
              ),
            ),
            Slider(
                min: 1,
                max: 10,
                value: _slidervalue.toDouble(),
                label: "serving",
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    _slidervalue =value.toInt()+1;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
