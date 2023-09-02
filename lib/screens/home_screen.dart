import '../utils/export.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64.h), child: Customappbar()),
        endDrawer: const Drawerbar(),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              child: Row(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    color: const Color(0xFF000000),
                    size: 25.sp,
                  ),
                  SizedBox(
                    width: 4.h,
                  ),
                  Text(
                    'Welcome,   Sumanth',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              child: homemenu(),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              width: 412.w,
              height: 418.h,
              decoration: const BoxDecoration(color: Color(0xFF151B57)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'Confused about what to eat?',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Get personalised diet suggestions with your V-SIAH subscription',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 371.w,
                          height: 204.h,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.w,right: 10.w),
                            child: Stack(
                                children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 68.w,
                                          height: 23.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xFFFF6B6B),
                                                  width: 1.sp),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5.r),
                                                  bottomLeft:
                                                      Radius.circular(5.r))),
                                          child: Center(
                                            child: Text(
                                              'V-Siah',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFFFF6B6B),
                                                  fontSize: 14.sp),
                                            ),
                                          )),
                                      Container(
                                        width: 111.w,
                                        height: 23.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFF6B6B),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5.r),
                                                bottomRight:
                                                    Radius.circular(5.r))),
                                        child: Center(
                                          child: Text('Plans for You',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.inter(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Your Diet Suggestions.',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 99.w,
                                    height: 66.h,
                                    decoration: BoxDecoration(color: Color.fromRGBO(255, 107, 107, 0.29)),
                                    child: Center(
                                      child: Text('LET FOOD \nBE THY MEDICINE',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Divider(
                                    color: const Color(0xFFFF6B6B),
                                    thickness: 1.sp,
                                  )
                                ],
                              ),
                              Positioned(left: 3.w,
                                  top: 171.h,
                                  child: Text('T&C Apply',style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 5.sp))),
                              Positioned(
                                left: 120,
                                  child: Image.asset(
                                'assets/images/Diet.png',
                                width: 218.w,
                                height: 183.h,
                              )),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      InkWell(onTap: () {},
                        child: Center(
                          child: Container(
                            height: 37.h,
                            width: 126.w,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.sp, color: Colors.white)),
                            child: Center(
                              child: Text('GET DIET',textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget homemenu() {
    List Items = [
      {
        "Images": "assets/images/medical.png",
        "name": "Medical Reports \n E-Storage"
      },
      {
        "Images": "assets/images/family.png",
        "name": "Manage Family Member's Reports"
      },
      {
        "Images": "assets/images/share.png",
        "name": "Share Files Securely \n to Doctors"
      },
      {
        "Images": "assets/images/remainder.png",
        "name": "Set Reminders \n With Doctors"
      },
    ];
    return SizedBox(
      height: 410.h,
      child: GridView.builder(
        padding: EdgeInsets.only(top: 32.h),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 120.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.sp, color: Colors.grey),
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r)))),
                  Positioned(top: 20.0,right: 4.0,
                    child: SizedBox(width: 173.w,height: 110.h,
                        child: Image.asset(Items[index]["Images"],)),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r)),
                    border: Border.all(width: 1.sp, color: Colors.grey)),
                width: 161.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      Items[index]["name"],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
