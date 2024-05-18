import 'package:flutter/material.dart';
import 'my_styled_text.dart';
import 'dart:math';

var randomizer = Random();  //for global use

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var currentDiceImage = 1;

  void funDiceRoll() {
    setState(() {
      currentDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$currentDiceImage.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: funDiceRoll,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 18, 85, 172),
            padding: const EdgeInsets.all(15),
          ),
          child: const MyStyledText("Shuffle"),
        ),
      ],
    );
  }
}
