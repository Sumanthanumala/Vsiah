import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vsiah/utils/export.dart';

class Bookremindercontroller extends GetxController{

  var doctoremail=TextEditingController();
  var reminderdate=TextEditingController();
  var remindertiming =TextEditingController();
  var descriptioncontroller =TextEditingController();
  var selectedate= DateTime.now().obs;
  var Validate=false.obs;


  appointmentdate() async {
    DateTime? picked = await showDatePicker(
        helpText: '',
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        context: Get.context!,
        initialDate: selectedate.value,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if(picked!=null && picked!=selectedate.value){
      selectedate.value=picked;
      reminderdate.text=DateFormat('dd/MM/yyyy').format(picked);
    }
  }

  appointmenttime () async {
    TimeOfDay ? pickedtime= await showTimePicker(
        context: Get.context!,
        initialTime: TimeOfDay.now(),
        initialEntryMode: TimePickerEntryMode.dialOnly);
    if(pickedtime!=null){
      remindertiming.text= pickedtime.format(Get.context!);
    }
  }

  void validate(){
    if (doctoremail.text.isNotEmpty &&
        remindertiming.text.isNotEmpty &&
        reminderdate.text.isNotEmpty) {
      Validate.value=false;
      Get.off(Dashboard());
    }
    else{
      Validate.value=true;
    }
  }

  String ? error() {
    if(Validate.value==true){
      return 'Please provide details';
    }
    else{
      return null;
    }
  }
}