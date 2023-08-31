import 'package:vsiah/controllers/splashcontroller.dart';
import 'package:vsiah/utils/export.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});

  Splashcontroller splashcontroller = Get.put(Splashcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          SizedBox(height: 16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 115.w),
            child: Row(
                children: [
                  Text('V-SIAH',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        fontSize: 40.sp,
                        color: const Color(0xFF122A54),
                      )),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h, left: 4.w),
                    child: Container(
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: const Color(0xFF122A54),
                          borderRadius: BorderRadius.circular(3.r)),
                      child: Text('TM',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20.sp)),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
