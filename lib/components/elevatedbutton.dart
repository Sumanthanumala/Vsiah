import '../utils/export.dart';

class ButtonElevated extends StatelessWidget {

   String text;
   VoidCallback ? ontap;
   Color ? color;

  ButtonElevated({super.key, required this.text, this.ontap,this.color});

  @override

  Widget build(BuildContext context) {
    return InkWell( onTap: ontap,
      child: Container(
        width: 290.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
          boxShadow: [
            BoxShadow(
                color: const Color.fromRGBO(114, 95, 255, 0.5),
                blurRadius: 5.r,
                spreadRadius: 1.r)
          ],
        ),
        child: Center(
          child: Text(text,
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp)),
        ),
      ),
    );
  }
}
