import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:provider/provider.dart';

class KitchenControl extends StatelessWidget {
  const KitchenControl({super.key});

  @override
  Widget build(BuildContext context) {
    const labels = Cuisine.labels;
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('Kök:'),
        SizedBox(width: AppTheme.paddingSmall),
        DropdownMenu<String>(
          width: 164,
          enableFilter: false, // Disables filtering (prevents typing)
          requestFocusOnTap: false, // Prevents keyboard from opening
          initialSelection: labels[0], // Starts with the first element selected
          dropdownMenuEntries: [
            for (int i = 0; i < labels.length; i++)
              DropdownMenuEntry(
                value: labels[i],
                label: labels[i],
                leadingIcon: Cuisine.flags[i],
              ),
          ],
          onSelected: (value) {
            recipeHandler.setCuisine(value);
          },
        ),
      ],
    );
  }
}
