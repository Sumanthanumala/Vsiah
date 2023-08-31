import '../utils/export.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const Drawerbar(),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64.h), child: Customappbar()),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 35.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Customheader(
                    title: 'Edit Profile',
                    subtitle: 'Please enter the following details and save.'),
                Customform(),
                SizedBox(
                  width: 339.w,
                  height: 59.h,
                  child: Formfield(
                      hinttext: 'Location'),
                ),
                SizedBox(
                  height: 183.h,
                ),
                Formbutton(
                  text: 'Save changes',
                  ontap: () {
                    Get.offAll(Dashboard());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
