import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  RxString genders = "Male".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;

  RxString bMI = "".obs;
  RxDouble tempBMI = 0.0.obs;
  RxString bMIstatus = "".obs;
  Rx<Color> colorStattus = const Color(0xff246AFE).obs;

  void gengerHandle(String gender) {
    genders.value = gender;
  }

  void calculateBMI() {
    var heightMeter = height / 100;
    tempBMI.value = weight / (heightMeter * heightMeter);
    bMI.value = tempBMI.toStringAsFixed(2);
    tempBMI.value = double.parse(bMI.value);
    findStatus();
    // print(bMI);
  }

  void findStatus() {
    if (tempBMI.value < 18.5) {
      bMIstatus.value = "UnderWeight";
      colorStattus.value = const Color(0xffFFB800);
    } else if (tempBMI.value > 18.5 && tempBMI < 24.49) {
      bMIstatus.value = "Normal";
      colorStattus.value = const Color(0xff00CA39);
    } else if (tempBMI.value > 25.0 && tempBMI < 29.9) {
      bMIstatus.value = "OverWeight";
      colorStattus.value = const Color(0xFFA39319);
    } else if (tempBMI.value > 30.0 && tempBMI < 34.9) {
      bMIstatus.value = "OBESE";
      colorStattus.value = const Color(0xCCCF4343);
    } else if (tempBMI.value > 35.0) {
      bMIstatus.value = "Extremely OBESE";
      colorStattus.value = const Color(0xF3E00606);
    }
  }
}
