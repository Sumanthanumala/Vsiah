import 'package:vsiah/utils/export.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Login extends StatelessWidget {
  Login({super.key});

  Logincontroller logincontroller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.h), child: Customappbar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Login_image(
                text: 'Enter your 10 digit mobile number to get an OTP '),
            SizedBox(
              height: 24.h,
            ),
            Obx(
              () => TextField(
                maxLength: 10,
                controller: logincontroller.mobilecontroller,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: const Color(0xFF808080)),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    counterText: '',
                    errorText: logincontroller.error(),
                    prefixText: '+91 | ',
                    prefixStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                        color: const Color(0xFF808080)),
                    hintText: 'Mobile Number',
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFC5C5C5), width: 1.sp)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFC5C5C5), width: 1.sp)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFC5C5C5), width: 1.sp)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFC5C5C5), width: 1.sp))),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Text(
              'Login as',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: const Color(0xFFF2796B)),
            ),
            SizedBox(
              height: 10.h,
            ),
            ToggleSwitch(
              totalSwitches: 2,
              inactiveFgColor: const Color.fromRGBO(18, 42, 84, 1),
              minWidth: 98.w,
              minHeight: 36.h,
              labels: const ['Patient','Doctor'],
              activeFgColor: Colors.white,
              activeBgColor: const [Color.fromRGBO(18, 42, 84, 1)],
              fontSize: 13.sp,
              centerText: true,
              onToggle: (index) {
                if(index==0){
                logincontroller.isPatient.value=true;
                }
                else{
                 logincontroller.isPatient.value=false;
                }
              },
            ),
            SizedBox(
              height: 34.h,
            ),
            Text(
              'By continuing, you agree to the Terms and Conditions and \n confirm that you are over the age of 18.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: const Color(0xFF808080)),
            ),
            SizedBox(
              height: 16.h,
            ),
            ButtonElevated(
                text: 'Get OTP',
                color: const Color(0xFFF2796B),
                ontap: () {
                  logincontroller.check(logincontroller.mobilecontroller.text);
                }),
          ]),
        ),
      ),
    );
  }
}
