import '../utils/export.dart';

class Dashboard extends StatelessWidget {
  Dashboardcontroller dashboardcontroller = Get.put(Dashboardcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => IndexedStack(
              index: dashboardcontroller.index.value,
              children: dashboardcontroller.screenlist,
            )),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                dashboardcontroller.index.value = value;
              },
              selectedIconTheme: const IconThemeData(color: Color(0xFF122A54)),
              selectedLabelStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
              ),
              selectedItemColor: const Color(0xFF122A54),
              selectedFontSize: 10.sp,
              unselectedIconTheme:
                  const IconThemeData(color: Color(0xFFADADAD)),
              unselectedLabelStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
              ),
              unselectedItemColor: const Color(0xFFADADAD),
              unselectedFontSize: 10.sp,
              currentIndex: dashboardcontroller.index.value,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_outlined),
                    label: 'Appointments'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.file_present), label: 'Diet Plan')
              ]),
        ));
  }
}
