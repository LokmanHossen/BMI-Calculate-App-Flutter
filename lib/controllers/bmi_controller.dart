import 'package:get/get.dart';

class BmiController extends GetxController {
  RxBool isFemale = false.obs;
  RxBool isMale = false.obs;

  void gengerHandle(String gender) {
    if (gender == "male") {
      isMale.value = true;
      isFemale.value = false;
    }
    if (gender == "femal") {
      isMale.value = false;
      isFemale.value = true;
    }
  }
}
