import 'package:vsiah/utils/export.dart';


class Remindertextfield extends StatelessWidget {
  TextEditingController? controller;
  String? hinttext;
  String? labeltext;
  Widget? suffixicon;
  bool? readonly = false;
  int? maxlength;
  bool? expands = false;
  String  ? errortext;
  Remindertextfield({
    this.controller,
    this.hinttext,
    this.labeltext,
    this.suffixicon,
    this.maxlength,
    this.expands,
    this.readonly,
    this.errortext,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: Colors.black,
        controller: controller,
        readOnly: readonly ?? false,
        maxLength: maxlength,
        expands: expands ?? false,
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        decoration: InputDecoration(
            suffixIcon: suffixicon,
            hintText: hinttext,
            errorText: errortext,
            fillColor: Colors.grey.shade200,
            filled: true,
            labelText: labeltext,
            labelStyle: GoogleFonts.inter(color: Colors.blueGrey),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(width: 1.sp, color: Colors.red)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(width: 1.sp, color: Colors.red)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(color: Colors.black, width: 1.sp)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(color: Colors.black, width: 1.sp))));
  }
}
