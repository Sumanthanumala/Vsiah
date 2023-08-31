import '../utils/export.dart';

class Dashboardcontroller extends GetxController{

  var index=0.obs;
  List<Widget> screenlist=[
    Homescreen(),
    Appointment(),
    Dietplan()
  ];

}