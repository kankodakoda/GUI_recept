import 'package:flutter/material.dart';
import 'package:lab2/util/difficulty.dart';

class DifficultyControl extends StatefulWidget {
  const DifficultyControl({super.key});

  @override
  State<DifficultyControl> createState() => _DifficultyControlState();
}

class _DifficultyControlState extends State<DifficultyControl> {
  String _difficulty = Difficulty.labels[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final label in Difficulty.labels)
          RadioListTile<String>(
            dense: true,
            title: Text(label),
            value: label,
            groupValue: _difficulty,
            onChanged: (value) {
              setState(() {
                _difficulty = value!;
              });
            },
          ),
      ],
    );
  }
}
