import 'package:flutter/material.dart';
import 'dart:math';

class RollingDice extends StatefulWidget {
  const RollingDice({
    super.key,
  });

  @override
  State<RollingDice> createState() => _RollingDiceState();
}

class _RollingDiceState extends State<RollingDice> {
  final randomGenerator = Random();
  var diceImageOne = 1;
  var diceImageTwo = 1;
  void rollDice() {
    setState(() {
      diceImageOne = randomGenerator.nextInt(6) + 1;
      diceImageTwo = randomGenerator.nextInt(6) + 1;
    });
    // print('active...');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/dice-$diceImageOne.png',
                width: 150,
              ),
              Image.asset(
                'assets/images/dice-$diceImageTwo.png',
                width: 150,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            child: const Text(
              'ROLLING',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
