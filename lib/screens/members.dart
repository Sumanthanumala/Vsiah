import '../utils/export.dart';

class Member extends StatelessWidget {
  const Member({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64.h), child: Customappbar()),
        endDrawer: Drawerbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(children: [
              SizedBox(
                height: 38.h,
              ),
              Container(
                  width: 371.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(53, 64, 167, 1),
                        Color.fromRGBO(31, 39, 112, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Aakash Ahuja',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24.sp,
                                  color: Colors.white)),
                          Text(
                            'Male | <Age>',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w300,
                                fontSize: 15.sp,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        width: 66.w,
                        height: 66.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2.sp),
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/profile2.png'),
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 38.h,),
              User(),
              SizedBox(height: 197.h,width: 197.w,
                  child: Image.asset('assets/images/img.png',)),
              SizedBox(height: 50.h,)
            ]),
          ),
        ),
      ),
    );
  }

  Widget User() {
    var item=6;
    return SizedBox(width: 371.w,
      height: 131*item.h,
      child: ListView.builder(
        itemCount: item,physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 371.w,
                height: 110.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDFF6FF),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('User',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: const Color(0xFF122A54))),
                          Text('<Sex> | <DOB>',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.sp,
                                  color: const Color(0xFF666161))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.edit, size: 32.sp),
                          SizedBox(
                            width: 8.w,
                          ),
                          Icon(
                            Icons.delete_outline,
                            size: 32.sp,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21.h,)
            ],
          );
        },
      ),
    );
  }
}