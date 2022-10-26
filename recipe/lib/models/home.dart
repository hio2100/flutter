import 'package:flutter/material.dart';
import 'package:recipe/models/recipe.dart';
import 'package:recipe/models/recipedetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget buildRecipe(Recipe ahmed) {
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image(
                image: ExactAssetImage(ahmed.image),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                ahmed.title,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تطبيق المنيو"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return RecipeDetail(Recipe.samples[index]);
                    })
                    
                  );

                },
                child: buildRecipe(Recipe.samples[index]),
              ),
            );
          },
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}
