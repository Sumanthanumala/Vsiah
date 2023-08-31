import '../utils/export.dart';

class Customheader extends StatelessWidget {
  final String title;
  final String subtitle;

  Customheader({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          title,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
              fontSize: 24.sp,
              color: const Color(0xFF122A54)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(subtitle,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: const Color(0xFF646464))),
        SizedBox(
          height: 40.h,
        ),
      ],
    );
  }
}
