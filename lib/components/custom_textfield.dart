import '../utils/export.dart';

class Formfield extends StatelessWidget {
  TextEditingController ? controller;
  String ? hinttext;
  int ? maxlength;
  Widget ? suffixicon;


  Formfield({this.controller,this.hinttext,this.maxlength,this.suffixicon,});

  @override

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      color: const Color(0xFFF3F3F3),
      elevation: 2,
      shadowColor: const Color(0xFF000000),
      child: TextField(controller: controller,
        cursorColor: Colors.black26,
        maxLength: maxlength,
        style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            color: const Color(0xFF666161)),
        decoration: InputDecoration(counterText: '',
            suffixIcon: suffixicon,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            hintText: hinttext,
            contentPadding: EdgeInsets.only(left: 19.h),
            hintStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: const Color(0xFF666161))),
      ),
    );
  }
}
