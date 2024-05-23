import 'package:bmi_app/components/icon_button.dart';
import 'package:bmi_app/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
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
              Text('Weight'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${bmiController.weight.value}",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtons(
                onPressed: () {
                  bmiController.weight.value++;
                },
                icon: Icons.add,
              ),
              IconButtons(
                onPressed: () {
                  bmiController.weight.value--;
                },
                icon: Icons.minimize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
