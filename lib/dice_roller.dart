import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 1;
  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
