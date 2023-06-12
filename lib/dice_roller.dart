import 'package:flutter/material.dart';
import 'dart:math';

final randomized = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var num = 2;
  // var activeDiceImage = "assets/dice-2.png";

  void rollDice() {
    setState(() {
      // var activeDiceImage = "assets/dice-3.png";
      num = randomized.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          // activeDiceImage,
          "assets/dice-$num.png",
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "RollDice",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    ));
  }
}
