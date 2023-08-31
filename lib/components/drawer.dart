import '../utils/export.dart';

class Drawerbar extends StatelessWidget {
  const Drawerbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 400.w,
      backgroundColor: const Color(0xFF343FA4),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(180.r),
              bottomLeft: Radius.circular(180.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 65.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Container(
                width: 299.w,
                height: 106.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Hi, Aakash Ahuja',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                                color: const Color(0xFF3540A7))),
                        InkWell( onTap: () => Get.to(const Editprofile()),
                          child: Container(
                            width: 92.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(33, 41, 116, 1),
                                  Color.fromRGBO(34, 42, 118, 1)
                                ])),
                            child: Center(
                              child: Text('Edit Profile',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 12.sp)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 48.w,
                      height: 49.h,
                      decoration: BoxDecoration(
                          color: const Color(0xFF3540A7),
                          border: Border.all(width: 2.sp),
                          shape: BoxShape.circle),
                      child: Image.asset('assets/images/profile.png'),
                    )
                  ],
                )),
            SizedBox(
              height: 60.h,
            ),
            menu(),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 89.w,
                height: 35.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.white, width: 1.sp)),
                child: Center(
                    child: Text('Logout',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Made with love in India by \nITMTB Technologies',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget menu() {
    List Items = [
      {"name": "Members","routes":kmembers},
      {"name": "Active Plans","routes":kactiveplans},
      {"name": "About","routes":kabout},
      {"name": "Send Feedback","routes":ksendfeedback}
    ];
    return SizedBox(
      height: 384.h,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Items.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(onTap: () {
                Get.toNamed(Items[index]["routes"]);
              },
                child: Text(Items[index]["name"],
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp)),
              ),
              SizedBox(
                height: 80.h,
              ),
            ],
          );
        },
      ),
    );
  }
}
