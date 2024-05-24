import 'package:bmi_app/components/age_selector.dart';
import 'package:bmi_app/components/height_selector.dart';
import 'package:bmi_app/components/primary_button.dart';
import 'package:bmi_app/components/theme_change_button.dart';
import 'package:bmi_app/components/weight_selector.dart';
import 'package:bmi_app/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/bottom_button.dart';
import '../controllers/bmi_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeController themeController = Get.put(ThemeController());
    BmiController bmiController = Get.put(BmiController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const ThemeChangeButton(),
              Row(
                children: [
                  Text(
                    "Welcome😊",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  PrimaryButton(
                    onPressed: () {
                      bmiController.gengerHandle("Male");
                    },
                    icon: Icons.male,
                    buttonText: "Male",
                  ),
                  const SizedBox(width: 10),
                  PrimaryButton(
                    onPressed: () {
                      bmiController.gengerHandle("Female");
                    },
                    icon: Icons.female,
                    buttonText: "Female",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 60),
                          WeightSelector(),
                          SizedBox(height: 40),
                          AgeSelector(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: BottomButton(
                  icon: Icons.done_all_rounded,
                  buttonText: "Calculate Result",
                  onPressed: () {
                    bmiController.calculateBMI();
                    Get.to(() => const ResultPage());
                  },
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
