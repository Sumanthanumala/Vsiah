import '../utils/export.dart';

class Logincontroller extends GetxController {

  var mobilecontroller = TextEditingController();
  var validate=false.obs;
  var isPatient=true.obs;

  void check(String number) {
    if (number.isNotEmpty && number.length == 10) {
      validate.value=false;
      Get.off(Otpscreen());
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


