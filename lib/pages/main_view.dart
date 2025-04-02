import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

// En kommentar

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), _recipeArea(context)]),
    );
  }

  Widget _controlPanel(context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 255, 188, 201),
      child: Column(
        children: [
          Text("Receptsök"),
          Text(
            "Hitta ett recept som passar genom att ändra inställningarna nedanför",
          ),
          SizedBox(height: 16),
          Row(children: [Text("Ingredients:"), IngredientControl()]),
          Row(children: [Text("Kök:"), KitchenControl()]),
          SizedBox(height: 16),
          Column(children: [Text("Svårighetsgrad:"), DifficultyControl()]),
          SizedBox(height: 20),
          Column(children: [Text("Maxpris:"), PriceControl()]),
          SizedBox(height: 10),
          Column(children: [Text("Maxtid"), TimeControl()]),
        ],
      ),
    );
  }

  Widget _recipeArea(context) {
    return Expanded(
      child: Container(color: const Color.fromARGB(255, 182, 218, 252)),
    );
  }
}
