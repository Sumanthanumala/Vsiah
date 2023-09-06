import '../utils/export.dart';

class Bookreminder extends StatelessWidget {
  Bookremindercontroller remindercontroller = Get.put(Bookremindercontroller());

  Bookreminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Book Remainders',
            style: GoogleFonts.inter(
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Enter the following details to book reminder through your Google Calender',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Obx(() => Remindertextfield(
                  errortext: remindercontroller.error(),
                  controller: remindercontroller.doctoremail,
                  hinttext: 'Enter email address',
                  labeltext: "Doctor's Email",
                )),
            SizedBox(
              height: 20.h,
            ),
            Obx(() => Remindertextfield(
                  labeltext: 'Reminder Date',
                  hinttext: 'Select Date',
                  errortext: remindercontroller.error(),
                  controller: remindercontroller.reminderdate,
                  readonly: true,
                  suffixicon: InkWell(
                    onTap: () => remindercontroller.appointmentdate(),
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: Icon(Icons.calendar_today_rounded,
                          color: Colors.black, size: 24.sp),
                    ),
                  ),
                )),
            SizedBox(
              height: 20.h,
            ),
            Obx(() => Remindertextfield(
                controller: remindercontroller.remindertiming,
                labeltext: 'Reminder timing',
                hinttext: 'Select time',
                readonly: true,
                errortext: remindercontroller.error(),
                suffixicon: InkWell(
                  onTap: () => remindercontroller.appointmenttime(),
                  child: Padding(
                    padding: EdgeInsets.only(right: 24.w),
                    child: Icon(Icons.access_time_rounded,
                        size: 25.sp, color: Colors.black),
                  ),
                ))),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 360.h,
                child: Remindertextfield(
                  controller: remindercontroller.descriptioncontroller,
                  labeltext: 'Description (optional)',
                  hinttext: 'Message',
                  expands: true,
                  maxlength: 250,
                )),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: 360.w,
              height: 49.h,
              child: ElevatedButton(
                  onPressed: () => remindercontroller.validate(),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r)),
                      backgroundColor: const Color(0xFF1F2770)),
                  child: Text(
                    'Book Reminder',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Colors.white),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
