import 'package:bmi_app/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String buttonText;
  final VoidCallback onPressed;
  const PrimaryButton(
      {super.key,
      required this.icon,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.primary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Theme.of(context).colorScheme.surface,
              ),
              const SizedBox(width: 8),
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.8,
                  color: Theme.of(context).colorScheme.surface,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
