import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

// widget class.
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return DiceRollerState();
  }
}

// state class
class DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = '../assets/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          height: 200,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
            ),
            child: const StyledText('Roll Dice'))
      ],
    );
  }

  /*void rollDice() {
    activeDiceImage = '../assets/images/dice-1.png';
    print('Image Changed');
  }*/
  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6) + 1;
      activeDiceImage = '../assets/images/dice-$diceRoll.png';
    });
  }
}
