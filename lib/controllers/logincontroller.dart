import '../utils/export.dart';

class Logincontroller extends GetxController {

  var mobilecontroller = TextEditingController();
  var validate=false.obs;

  void check(String number) {
    if (number.isNotEmpty && number.length == 10) {
      Get.off(Otpscreen());
      validate.value=false;
    } else {
      validate.value=true;
      error();
    }
  }
  String ? error() {
    if(validate.value==true){
      return 'Phone number should be 10 digits';
    }
    else{
      return null;
    }
  }
}


