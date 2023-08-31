import 'package:vsiah/components/dropdownfield.dart';
import 'package:vsiah/controllers/formcontroller.dart';
import 'package:vsiah/utils/export.dart';

class Customform extends StatelessWidget {
  Formcontroller formcontroller = Get.put(Formcontroller());

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: 158.w,
              height: 59.h,
              child: Formfield(
                hinttext: 'First Name',
              )),
          SizedBox(
            width: 23.w,
          ),
          SizedBox(
              width: 158.w,
              height: 59.h,
              child: Formfield(
                hinttext: 'Last Name',
              )),
        ],
      ),
      SizedBox(
        height: 8.h,
      ),
      SizedBox(
          width: 339.w,
          height: 59.h,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)),
            color: const Color(0xFFF3F3F3),
            elevation: 2,
            shadowColor: const Color(0xFF000000),
            child: TextField(
              controller: formcontroller.dobcontroller,
              onTap: () => formcontroller.choosedate(),
              readOnly: true,
              cursorColor: Colors.black26,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  color: const Color(0xFF666161)),
              decoration: InputDecoration(
                  counterText: '',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 19.w, top: 12.h),
                  hintText: 'Date of Birth',
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFF666161)),
                  hintStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: const Color(0xFF666161))),
            ),
          )),
      SizedBox(
        height: 8.h,
      ),
      SizedBox(
        width: 339.w,
        height: 59.h,
        child: Formfield(hinttext: 'Mobile No.', maxlength: 10),
      ),
      SizedBox(
        height: 8.h,
      ),
      SizedBox(width: 339.w, height: 59.h, child: Dropdownfield()),
      SizedBox(
        height: 8.h,
      ),
      SizedBox(
        width: 339.w,
        height: 59.h,
        child: Formfield(hinttext: 'Email ID'),
      ),
      SizedBox(
        height: 8.h,
      ),
    ]);
  }
}
