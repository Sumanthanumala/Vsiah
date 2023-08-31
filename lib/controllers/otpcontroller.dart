import 'dart:async';

import '../utils/export.dart';

class Otpcontroller extends GetxController {
  var pincontroller = TextEditingController();
  var isverified = false.obs;
  var otp = '123456';
  var otpentered = ''.obs;
  var start = 15.obs;

  @override
  void onInit() {
    super.onInit();
    starttimer();
  }

  void starttimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start.value == 0) {
        timer.cancel();
      } else {
        start.value--;
      }
    });
  }

  void verify() {
    if (pincontroller.text == otp) {
      Get.off(Dashboard());
    } else {
      Get.snackbar('','Enter valid otp', snackPosition: SnackPosition.BOTTOM);
    }
  }
}
