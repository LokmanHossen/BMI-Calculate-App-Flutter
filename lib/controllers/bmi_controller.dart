import 'package:get/get.dart';

class BmiController extends GetxController {
 RxString genders = "Male".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;

  void gengerHandle(String gender) {
    genders.value = gender;
  }
}
