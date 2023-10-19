import 'package:dice_app/roliing_dice.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(this.darkred, this.lightred, {super.key});

  const MainContainer.red({super.key})
      : darkred = const Color.fromARGB(255, 133, 3, 3),
        lightred = const Color.fromARGB(255, 233, 58, 58);

  final Color darkred;
  final Color lightred;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            darkred,
            lightred,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const RollingDice(),
    );
  }
}
