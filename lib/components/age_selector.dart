import 'package:bmi_app/components/icon_button.dart';
import 'package:flutter/material.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Age'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '23',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtons(onPressed: () {}, icon: Icons.add),
              IconButtons(onPressed: () {}, icon: Icons.minimize),
            ],
          ),
        ],
      ),
    );
  }
}
