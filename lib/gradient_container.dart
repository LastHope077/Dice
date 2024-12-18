import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

import 'dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  GradiantContainer(this.color, {super.key});

  List<Color> color = [
    Colors.lightBlue,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: color,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
        child: DiceRoller(), 
      ),
    );
  }
}


