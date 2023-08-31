import 'package:vsiah/controllers/dropdowncontroller.dart';

import '../utils/export.dart';

class Dropdownfield extends StatelessWidget {

  Dropdowncontroller controller =Get.put(Dropdowncontroller());
  List<String> sex=["Male","Female"];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      color: const Color(0xFFF3F3F3),
      elevation: 2,
      shadowColor: const Color(0xFF000000),
      child: DropdownButtonFormField(
        style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF252525)),
        hint: const Text('Sex'),
        padding: EdgeInsets.only(left: 19.w,right: 19.w,),
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        decoration: const InputDecoration(border: InputBorder.none),
        items: sex.map((String e) => DropdownMenuItem<String>(
            value: e,
            child: Text(e))).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
