import 'package:vsiah/controllers/otpcontroller.dart';

import '../utils/export.dart';

class Otpscreen extends StatelessWidget {

  Otpscreen({super.key});

  Logincontroller logincontroller = Get.put(Logincontroller());
  Otpcontroller otpcontroller = Get.put(Otpcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64.h), child: Customappbar()),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Login_image(text: 'OTP sent to'),
                Row(
                  children: [
                    Text(logincontroller.mobilecontroller.text,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: const Color(0xFF808080))),
                    SizedBox(
                      width: 8.w,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.off(Login());
                        },
                        child: Text(
                          'Edit Number',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: const Color(0xFF2F669A)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Pinput(
                    controller: otpcontroller.pincontroller,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    closeKeyboardWhenCompleted: true,
                    defaultPinTheme: PinTheme(
                      width: 45.w,
                      height: 59.w,
                      textStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                          color: const Color(0xFF808080)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(
                            color: const Color(0xFFC5C5C5),
                            width: 1.sp,
                          )),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 45.w,
                      height: 59.w,
                      textStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                          color: const Color(0xFF2F669A)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(
                            color: const Color(0xFFC5C5C5),
                            width: 1.sp,
                          )),
                    ),
                    toolbarEnabled: true,
                    onCompleted: (value) {
                      otpcontroller.otpentered.value = value;
                    },
                    length: 6,
                    scrollPadding: const EdgeInsets.only(bottom: 100.0),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Text(
                    'Did not receive OTP?',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 30.h),
                Obx(() => Center(
                    child: otpcontroller.start.value == 0
                        ? InkWell(
                            onTap: () {
                              print('resend otp');
                            },
                            child: Text('Resend OTP',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF2F669A),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                )),
                          )
                        : Text(
                            otpcontroller.start.value >= 10
                                ? 'Resend OTP in 00:${otpcontroller.start.value}'
                                : 'Resend OTP in 00:0${otpcontroller.start.value}',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF2F669A),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            )))),
                SizedBox(height: 36.h),
                // Container(height: 21.h,color: Colors.grey,),
                SizedBox(height: 36.h,),
                Obx(() => Center(
                      child: otpcontroller.otpentered.value.length == 6
                          ? ButtonElevated(
                              text: 'Verify and Proceed',
                              color: const Color.fromRGBO(242, 121, 107, 1),
                              ontap: () {
                                otpcontroller.verify();
                              },
                            )
                          : ButtonElevated(
                              text: 'Verify and Proceed',
                              color: const Color.fromRGBO(242, 121, 107, 0.5),
                              ontap: null,
                            ),
                    ))
              ],
            ),
          ),
        ));
  }
}
