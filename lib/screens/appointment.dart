import '../utils/export.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.h), child: Customappbar()),
      endDrawer: Drawerbar(),
      body: Column(children: [
        SizedBox(height: 40.h,),
        Container(
          width: 371.w,
          height: 141.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF3540A7), Color(0xFF1F2770)])),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            SizedBox( width:159.w,
              child: Text('Upcoming Reminders',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp)),
            ),
            SizedBox(width: 75.w,height: 75.h,
              child: CircleAvatar(
                child: Icon(Icons.notifications_rounded,size: 48.sp),
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF3540A7),
              ),
            )
          ]),
        ),
        SizedBox(height: 250.h,),
        Text(
          'No upcoming reminders, book a new reminders through the button below.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: Color(0xFF3540A7),
              fontSize: 18.sp),
        ),
        SizedBox(height: 20.h,),
        SizedBox(width: 112.w,height: 35.h,
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Color(0xFF3540A7),
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r))),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Refresh', textAlign: TextAlign.center),
                  Icon(Icons.refresh_outlined,size: 24.sp,)
          ],)),
        ),
        SizedBox(height: 150.h,),
        Formbutton(text: 'Set new reminders',
          ontap: () => Get.to(Bookreminder()),)
      ]),
    );
  }
}
