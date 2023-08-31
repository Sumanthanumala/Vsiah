import '../utils/export.dart';

class Formbutton extends StatelessWidget {
  String text;
  VoidCallback ontap;

  Formbutton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 359.w,
        height: 59.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(136, 169, 233, 1),
            Color.fromRGBO(44, 67, 212, 1)
          ]),
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
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp)),
        ),
      ),
    );
  }
}
