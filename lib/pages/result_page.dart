import 'dart:core';
import 'package:bmi_app/components/bottom_button.dart';
import 'package:bmi_app/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiConroller = Get.put(BmiController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                  Text("Back"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Obx(
                    () => Text(
                      "Your BMI is",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: bmiConroller.colorStattus.value,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 350,
                child: Expanded(
                  child: Obx(
                    () => CircularPercentIndicator(
                      animationDuration: 1000,
                      footer: Text(
                        bmiConroller.bMIstatus.value,
                        style: TextStyle(
                          color: bmiConroller.colorStattus.value,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      radius: 130,
                      lineWidth: 30,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      percent: (bmiConroller.tempBMI.value / 100),
                      center: Text(
                        "${bmiConroller.bMI.value}%",
                        style: TextStyle(
                          color: bmiConroller.colorStattus.value,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      progressColor: bmiConroller.colorStattus.value,
                      backgroundColor:
                          bmiConroller.colorStattus.value.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  // color: Theme.of(context).colorScheme.primaryContainer,
                  color: const Color(0xFF171409),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Your BMI is 20.7, indicating your weight is in the Normal category for adults of your height.  For your height, a normal weight range wouldbe from 53.5 to 72 kilograms.Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25),
                child: BottomButton(
                  onPressed: () {
                    Get.back();
                  },
                  buttonText: "Find out More",
                  icon: Icons.arrow_back_ios_new_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
