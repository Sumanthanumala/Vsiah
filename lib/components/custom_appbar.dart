import 'package:vsiah/utils/export.dart';

class Customappbar extends StatelessWidget {
  Customappbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        foregroundColor: const Color(0xFF122A54),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 42.w,
              height: 40.h,
              child: Image.asset('assets/images/logo.png',)),
        ),
        title: SizedBox(
          width: 100.w,
          height: 40.h,
          child: Row(children: [
            Text('V-SIAH',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.sp,
                  color: const Color(0xFF122A54),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 4.w),
              child: Container(
                width: 20.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF122A54),
                    borderRadius: BorderRadius.circular(3.r)),
                child: Text('TM',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 10.sp)),
              ),
            )
          ]),
        ));
  }
}
