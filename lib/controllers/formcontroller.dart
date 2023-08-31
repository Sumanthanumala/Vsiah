import 'package:intl/intl.dart';

import '../utils/export.dart';

class Formcontroller extends GetxController {

  var dobcontroller =TextEditingController();
  var selectedate= DateTime.now().obs;


  choosedate() async {
    DateTime? picked = await showDatePicker(
        helpText: '',
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        context: Get.context!,
        initialDate: selectedate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024));
    if(picked!=null && picked!=selectedate.value){
      selectedate.value=picked;
      dobcontroller.text=DateFormat('dd/MM/yyyy').format(picked);
    }
  }
}