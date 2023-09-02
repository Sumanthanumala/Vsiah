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
              selectedIconTheme:
                  const IconThemeData(color: Color(0xFF122A54), size: 24),
              selectedLabelStyle: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              selectedFontSize: 14.sp,
              selectedItemColor: const Color(0xFF122A54),
              unselectedIconTheme:
                  const IconThemeData(color: Color(0xFFADADAD), size: 24),
              unselectedLabelStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
              ),
              unselectedItemColor: const Color(0xFFADADAD),
              unselectedFontSize: 14.sp,
              currentIndex: dashboardcontroller.index.value,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.date_range_rounded), label: 'Reminders'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.text_snippet_rounded), label: 'Diet Plan')
              ]),
        ));
  }
}
