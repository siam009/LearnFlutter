import 'package:first_app/dice-roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/dice-roller.dart';


Alignment? noAlign;
final startAlignment = getCal();
const endAlignment = Alignment.bottomRight;

Alignment getCal() {
  return Alignment.topLeft;
}

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color2;
  final Color color1;

  var activeDiceImage = "assets/dice-1.png";

  void rollDice() {
    activeDiceImage = "assets/dice-4.png";
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
