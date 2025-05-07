import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:provider/provider.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Row(
      spacing: 30.0,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(child: recipe.customImage()),
        Text(recipe.name),
        IconButton(
          onPressed: () {
            uiController.deselectRecipe();
          },
          icon: Icon(Icons.close),
        ),
      ],
    );
  }
}
