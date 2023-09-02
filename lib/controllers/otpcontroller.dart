import 'dart:async';

import 'package:vsiah/screens/doctor_home.dart';

import '../utils/export.dart';

class Otpcontroller extends GetxController {
  var pincontroller = TextEditingController();
  var isverified = false.obs;
  var otp = '123456';
  var otpentered = ''.obs;
  var start = 15.obs;
  Logincontroller logincontroller = Get.put(Logincontroller());

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
      if(logincontroller.isPatient.value==true){
        Get.offAll(Dashboard());
        print('patientScreen');
      }
      else if(logincontroller.isPatient.value==false){
        Get.offAll(Dhome());
        print('Doctor Screen');
      }
    } else {
      Get.snackbar('','Enter valid otp', snackPosition: SnackPosition.BOTTOM);
    }
  }


}
