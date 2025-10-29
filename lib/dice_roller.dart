import 'package:flutter/material.dart';
import 'package:roll_a_dice/styled_text.dart';
import 'dart:math';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentRolledNumber = 1;
  void rollDice() {
    setState(() {
      currentRolledNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentRolledNumber.png', width: 200),
        SizedBox(height: 20),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0XFF9D50BB),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll'),
        ),
      ],
    );
  }
}
