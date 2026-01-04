import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';

class Goal extends StatelessWidget {
  const Goal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Goals',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        buildGoal('Planning Stage'),
        buildGoal('Development'),
        buildGoal('Execution Phase'),
        buildGoal('New Way To Living'),
      ],
    );
  }

  Padding buildGoal(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.blue,
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
