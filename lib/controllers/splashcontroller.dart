
import 'dart:async';

import '../utils/export.dart';

class Splashcontroller extends GetxController{
  //
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.off(Login(),transition: Transition.rightToLeft);
    });
  }
}