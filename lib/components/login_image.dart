import '../utils/export.dart';

class Login_image extends StatelessWidget {
  String text;
  Login_image({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 10.h,),
      Stack(
        children: [
          Row(children: [
            const Icon(Icons.person_2_outlined),
                Text(
                  ' Login or SignUp',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: const Color(0xFF252525)),
                )
              ],),
          SizedBox(height: 374.h,width: 374.w,
              child: Image.asset('assets/images/login.png'))
        ],
      ),
      Text(text,textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 17.sp,
                color: const Color(0xFFF2796B))),
      ],);
  }
}
